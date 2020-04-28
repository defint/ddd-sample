import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_status.freezed.dart';

@freezed
abstract class ApplicationStatus with _$ApplicationStatus {
  const factory ApplicationStatus.normal() = Normal;
  const factory ApplicationStatus.loading() = Loading;

  const factory ApplicationStatus.formInitial() = FormInitial;
  const factory ApplicationStatus.formValidating() = FormValidating;
  const factory ApplicationStatus.formSubmitting() = FormSubmitting;
  const factory ApplicationStatus.formSubmitted() = FormSubmitted;
}
