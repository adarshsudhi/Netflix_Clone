import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/core/Colors/Strings.dart';

import '../../../infrastructure/FirebaseServices/models/Usermodel.dart';

part 'getcurrentuser_event.dart';
part 'getcurrentuser_state.dart';
part 'getcurrentuser_bloc.freezed.dart';

class GetcurrentuserBloc
    extends Bloc<GetcurrentuserEvent, GetcurrentuserState> {
  GetcurrentuserBloc() : super(GetcurrentuserState.initial()) {
    on<_Getcurretnuser>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final getcurrent =
          await Firestore.collection('user').doc(Auth.currentUser!.uid).get();
      emit(state.copyWith(
          isloading: false, model: Usermode.fromMap(getcurrent)));
    });
  }
}
