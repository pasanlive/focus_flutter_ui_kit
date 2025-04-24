import 'package:flutter_bloc/flutter_bloc.dart';

class DemoCalendarViewController extends Cubit<DateTime> {
  DateTime selectedDateTime;

  DemoCalendarViewController({
    required this.selectedDateTime,
  }) : super(selectedDateTime);

  loadCalendarItems(selectedDateTime) {
    this.selectedDateTime = selectedDateTime;
    emit(this.selectedDateTime);
  }
}
