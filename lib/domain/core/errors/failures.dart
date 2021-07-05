import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.serverFailure() = _ServerFailure;
  const factory Failures.networkFailure() = _NetworkFailure;
  const factory Failures.cacheFailure() = _CacheFailure;
  const factory Failures.unexpectedFailure(String msg) = _UnexpectedFailure;
}
