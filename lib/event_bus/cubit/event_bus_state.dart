part of 'event_bus_cubit.dart';

@freezed
class EventBusState with _$EventBusState {

  const factory EventBusState({
    DateTime? updateTime,
    @Default(EventBusMode.init()) EventBusMode eventBusMode,
  }) = _EventBusState;

  factory EventBusState.createState({
    required EventBusMode eventBusMode,
  }) {
    return EventBusState(
      updateTime: DateTime.now(),
      eventBusMode: eventBusMode,
    );
  }

}

@freezed
class EventBusMode with _$EventBusMode {

  const factory EventBusMode.init() = InitEventBusMode;
  const factory EventBusMode.toast(String text) = ToastEventBusMode;
  const factory EventBusMode.deniedForeverLocation() = DeniedForeverLocationEventBusMode;
  const factory EventBusMode.emptyKey() = EmptyKeyEventBusMode;

}
