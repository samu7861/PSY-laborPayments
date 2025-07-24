import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_event.dart';
part 'csv_state.dart';
part 'csv_bloc.freezed.dart';

class CsvBloc extends Bloc<CsvEvent, CsvState> {
  CsvBloc() : super(_Initial()) {
    on<CsvEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
