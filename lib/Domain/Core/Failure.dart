import 'package:freezed_annotation/freezed_annotation.dart';
part 'Failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverfail() = _Serverfail;
  const factory MainFailure.clientfail() = _Clientfail;
}
