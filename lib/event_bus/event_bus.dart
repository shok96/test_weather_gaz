import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../extensions/context_extensions.dart';

part 'global_event.dart';

part 'event_bus.freezed.dart';

class EventBus {
  EventBus(BuildContext context) : assert(context.readOrNull() == null) {
    _init();
  }

  late final StreamController<GlobalEvent> _controller;

  Future<void> add(GlobalEvent event) async {
    _controller.add(event);
  }

  StreamSubscription<GlobalEvent> listen(
    void Function(GlobalEvent event) listener,
  ) {
    return _controller.stream.listen(listener);
  }

  void _init() {
    _controller = StreamController.broadcast();
    _controller.add(const GlobalEvent.init());
  }
}
