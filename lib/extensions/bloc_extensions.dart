import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

extension WaitState<S> on BlocBase<S> {
  FutureOr<T> waitStateType<T extends S>() async {
    if (state is T) return Future.sync(() => state as T);
    return await stream.firstWhere((s) => s is T) as T;
  }

  FutureOr<S> waitOneOfStateType(bool Function(S state) waitState) async {
    if (waitState(state)) return state;
    return stream.firstWhere((s) => waitState(s));
  }

  /// calls [listener] with current state and every state change
  StreamSubscription<S> listen(void Function(S state) listener) {
    listener(state);
    return stream.listen(listener);
  }
}
