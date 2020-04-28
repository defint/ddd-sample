import 'package:freezed_annotation/freezed_annotation.dart';

part 'backend_failure.freezed.dart';

@freezed
abstract class BackendFailure with _$BackendFailure {
  const factory BackendFailure.nameInvalid() = NameInvalid;
  const factory BackendFailure.doubledNameInvalid() = DoubledNameInvalid;
  const factory BackendFailure.serverError() = ServerError;
}
