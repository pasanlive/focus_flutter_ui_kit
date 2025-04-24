import 'package:flutter_bloc/flutter_bloc.dart';

class DemoChangeColorSchemeEvent {
  final String colorSchemeName;

  DemoChangeColorSchemeEvent(this.colorSchemeName);
}

class DemoChangeColorSchemeController extends Cubit<DemoChangeColorSchemeEvent> {
  DemoChangeColorSchemeEvent event;

  DemoChangeColorSchemeController({
    required this.event,
  }) : super(event);

  trigger(DemoChangeColorSchemeEvent event) {
    this.event = event;
    emit(this.event);
  }
}

class DemoPaginatedDataTableSortEvent {
  final int sortColumnIndex;
  final bool sortAscending;

  DemoPaginatedDataTableSortEvent(this.sortColumnIndex, this.sortAscending);
}

class DemoPaginatedDataTableSortController extends Cubit<DemoPaginatedDataTableSortEvent> {
  DemoPaginatedDataTableSortEvent event;

  DemoPaginatedDataTableSortController({
    required this.event,
  }) : super(event);

  trigger(DemoPaginatedDataTableSortEvent event) {
    this.event = event;
    emit(this.event);
  }
}

class DemoAsyncPaginatedDataTableSortEvent {
  final String? search;
  final int sortColumnIndex;
  final String sortFieldName;
  final bool sortAscending;

  DemoAsyncPaginatedDataTableSortEvent({
    this.search,
    this.sortColumnIndex = 1,
    this.sortFieldName = 'name',
    this.sortAscending = true,
  });
}

class DemoAsyncPaginatedDataTableSortController extends Cubit<DemoAsyncPaginatedDataTableSortEvent> {
  DemoAsyncPaginatedDataTableSortEvent event;

  DemoAsyncPaginatedDataTableSortController({
    required this.event,
  }) : super(event);

  trigger(DemoAsyncPaginatedDataTableSortEvent event) {
    this.event = event;
    emit(this.event);
  }
}
