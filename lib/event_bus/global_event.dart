part of 'event_bus.dart';

@freezed
class GlobalEvent with _$GlobalEvent {

  const factory GlobalEvent.init() =
  InitGlobalEvent;

  const factory GlobalEvent.globalToast(String text) =
      GlobalToastGlobalEvent;

  const factory GlobalEvent.deniedForeverLocation() =
  deniedForeverLocationGlobalEvent;

  const factory GlobalEvent.emptyKey() =
  EmptyKeyGlobalEvent;

}
