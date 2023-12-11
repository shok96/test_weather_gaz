import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../animations/configs/animation_config.dart';
import '../animations/widgets/animated_size.dart';
import '../animations/widgets/scale_on_tap.dart';
import '../res/colors.dart';
import '../theme/typography/icomoon_icons.dart';
import '../theme/typography/typography.dart';
import 'error_box.dart';
import 'input_error_controller.dart';

class Input extends HookWidget {
  const Input({
    Key? key,
    required this.controller,
    this.inputErrorController,
    this.formatters,
    this.autoFillHints,
    this.hint,
    this.onSubmit,
    this.label,
    this.inputType,
    this.isHidable = false,
    this.readOnly = false,
    this.trailing,
    this.trailingLabel,
    this.autofocus = false,
    this.onComplete,
    this.textInputAction,
    this.isExpand = false,
    this.onTap,
    this.isFocus,
    this.errorControllerCallback,
    this.isBorder = true,
    this.isCustomErrorBox = false,
    this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final InputErrorController? inputErrorController;
  final List<TextInputFormatter>? formatters;
  final Iterable<String>? autoFillHints;
  final String? hint;
  final String? label;
  final VoidCallback? onSubmit;
  final VoidCallback? onTap;
  final TextInputType? inputType;
  final bool isHidable;
  final bool readOnly;
  final Widget? trailing;
  final Widget? trailingLabel;
  final bool autofocus;
  final VoidCallback? onComplete;
  final TextInputAction? textInputAction;
  final bool isExpand;
  final bool isBorder;
  final Function(bool)? isFocus;
  final Function(String?)? errorControllerCallback;
  final bool isCustomErrorBox;
  final FocusNode? focusNode;

  static const _animationConfig = AnimationNormalConfig();

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final inputError = useState(
      inputErrorController?.getLocalizedError(localizations),
    );

    void errorListener() {
      inputError.value = inputErrorController?.getLocalizedError(localizations);
      if (errorControllerCallback != null) {
        errorControllerCallback!(inputError.value);
      }
    }

    VoidCallback? effect() {
      inputErrorController?.addListener(errorListener);
      return () {
        inputErrorController?.removeListener(errorListener);
      };
    }

    useEffect(effect, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
            child: Text(
              label!,
              style: ProjectTypography.captionRegular.copyWith(color: black),
            ),
          ),
        AnimatedContainer(
          duration: _animationConfig.duration,
          curve: _animationConfig.curve,
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: NoDecorationTextInput(
                      focusNode: focusNode,
                      onTap: onTap,
                      controller: controller,
                      textInputType: inputType,
                      autoFillHints: autoFillHints,
                      formatters: formatters,
                      hint: hint,
                      onSubmit: onSubmit,
                      textInputAction: textInputAction,
                      onComplete: onComplete,
                      readOnly: readOnly,
                      autofocus: autofocus,
                      maxLines: isExpand ? 5 : 1,
                      isHidable: isHidable,
                      hintStyle:
                          ProjectTypography.b1Roboto.copyWith(color: greyText),
                      inputStyle:
                          ProjectTypography.input.copyWith(color: black),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              if (!isCustomErrorBox) ErrorBox(error: inputError.value),
            ],
          ),
        ),
      ],
    );
  }
}

class NoDecorationTextInput extends HookWidget {
  const NoDecorationTextInput({
    Key? key,
    required this.controller,
    this.formatters,
    this.onSubmit,
    this.textInputType,
    this.readOnly = false,
    this.autoFillHints,
    this.hint,
    this.inputStyle,
    this.cursorColor,
    this.minLines = 1,
    this.maxLines = 1,
    this.focusNode,
    this.hintStyle,
    this.autofocus = false,
    this.textCapitalization,
    this.onComplete,
    this.textInputAction,
    this.contentPadding,
    this.onTap,
    this.isHidable = false,
  }) : super(key: key);

  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final VoidCallback? onSubmit;
  final TextInputType? textInputType;
  final bool readOnly;
  final Iterable<String>? autoFillHints;
  final String? hint;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final Color? cursorColor;
  final int minLines;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextCapitalization? textCapitalization;
  final VoidCallback? onComplete;
  final TextInputAction? textInputAction;
  final EdgeInsets? contentPadding;
  final VoidCallback? onTap;
  final bool isHidable;

  @override
  Widget build(BuildContext context) {
    final isHidden = useState(isHidable);

    void toggleHidden() {
      isHidden.value = !isHidden.value;
    }

    return RiderAnimatedSize(
      alignment: Alignment.topCenter,
      child: TextField(
        onTap: onTap,
        magnifierConfiguration: TextMagnifierConfiguration.disabled,
        autofocus: autofocus,
        style: inputStyle ?? ProjectTypography.userInput.copyWith(color: black),
        //cursorColor: cursorColor ?? Colors.white,
        controller: controller,
        inputFormatters: formatters,
        keyboardType: textInputType,
        onSubmitted: (_) => onSubmit?.call(),
        onEditingComplete: onComplete,
        readOnly: readOnly,
        autofillHints: autoFillHints,
        obscureText: isHidden.value,
        maxLines: maxLines,
        minLines: minLines,
        focusNode: focusNode,
        textInputAction: textInputAction ??
            (textInputType == TextInputType.multiline
                ? TextInputAction.newline
                : onSubmit == null
                    ? TextInputAction.next
                    : TextInputAction.done),
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          suffixIcon: isHidable
              ? ScaleOnTap(
                  onTap: toggleHidden,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    alignment: Alignment.center,
                    child: Icon(
                      isHidden.value ? Icomoon.eye : Icomoon.eye_off,
                      size: 24.0,
                      color: blue07,
                    ),
                  ),
                )
              : null,
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: blue07,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: stroke,
            ),
          ),
          contentPadding: contentPadding ?? EdgeInsets.zero,
          hintMaxLines: 1,
          // hintStyle:
          //     hintStyle ?? ProjectTypography.userInput.copyWith(color: black),
          // hintText: hint,
          labelText: hint,
          labelStyle:
              hintStyle ?? ProjectTypography.userInput.copyWith(color: black),
          filled: false,
          isDense: true,
        ),
      ),
    );
  }
}
