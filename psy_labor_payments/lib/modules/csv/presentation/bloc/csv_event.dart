part of 'csv_bloc.dart';

@freezed
class CsvEvent with _$CsvEvent {
  const factory CsvEvent.started() = _Started;
}