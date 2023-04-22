import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/core/Colors/Strings.dart';

part 'getvideos_event.dart';
part 'getvideos_state.dart';
part 'getvideos_bloc.freezed.dart';

class GetvideosBloc extends Bloc<GetvideosEvent, GetvideosState> {
  GetvideosBloc() : super(GetvideosState.initial()) {
    on<_Getallvideos>((event, emit) async {
      emit(state.copyWith(
        isloading: true,
      ));
      final Videos = await Firestore.collection('videos').get();

      List<String> URLS = [];

      for (var i = 0; i < Videos.docs.length; i++) {
        URLS.add((Videos.docs[i].data() as dynamic)['downloadurl']);
      }

      URLS.shuffle(Random());

      emit(state.copyWith(isloading: false, Vidoes: URLS));
    });
  }
}
