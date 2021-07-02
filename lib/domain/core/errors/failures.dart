import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.serverFailure() = _ServerFailure;
  const factory Failures.unexpectedFailure(String msg) = _UnexpectedFailure;
}
