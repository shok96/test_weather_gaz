import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testweathergaz/event_bus/event_bus.dart';

part 'event_bus_state.dart';

part 'event_bus_cubit.freezed.dart';

class EventBusCubit extends Cubit<EventBusState> {
  EventBusCubit(
    this._eventBus,
  ) : super(const EventBusState()) {
    _init();
  }

  final EventBus _eventBus;

  late final StreamSubscription<GlobalEvent> _streamSubscription;

  void _init() {
    _streamSubscription = _eventBus.listen(listenEvent);
  }

  void listenEvent(GlobalEvent event) {
    event.mapOrNull(
      emptyKey: (_) => emit(
        EventBusState.createState(
          eventBusMode: const EventBusMode.emptyKey(),
        ),
      ),
      globalToast: (text) => emit(
        EventBusState.createState(
          eventBusMode: EventBusMode.toast(
            text.text,
          ),
        ),
      ),
      deniedForeverLocation: (_) => emit(
        EventBusState.createState(
          eventBusMode: const EventBusMode.deniedForeverLocation(),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
