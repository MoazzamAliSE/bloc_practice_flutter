// actual implementation

import 'dart:async';

import 'package:bloc_practice/blocs/internetbloc/internet_event.dart';
import 'package:bloc_practice/blocs/internetbloc/internet_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? _streamSubscription;
  InternetBloc() : super(InternetInitialState()) {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));
// as listen is needed to run and it turn off when we turn the page. but listen is a StreamSubscription object so assign the value to is
    _streamSubscription = _connectivity.onConnectivityChanged.listen(
      (result) {
        if (result == ConnectivityResult.mobile ||
            result == ConnectivityResult.wifi) {
          add(InternetGainedEvent());
        } else {
          add(InternetLostEvent());
        }
      },
    );
  }
  @override
  Future<void> close() {
    _streamSubscription?.cancel();

    // TODO: implement close
    return super.close();
  }
}
