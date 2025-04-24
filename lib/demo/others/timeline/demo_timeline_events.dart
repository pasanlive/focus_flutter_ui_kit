import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTimelineConfigEvent {
  final FUITimelineSize? fuiTimelineSize;
  final TimelineAlign? timelineAlign;
  final bool? withFirstLastTrim;

  DemoTimelineConfigEvent({
    this.fuiTimelineSize,
    this.timelineAlign,
    this.withFirstLastTrim,
  });
}

class DemoTimelineConfigController extends Cubit<DemoTimelineConfigEvent> {
  DemoTimelineConfigEvent event;

  DemoTimelineConfigController({
    required this.event,
  }) : super(event);

  trigger(DemoTimelineConfigEvent event) {
    this.event = event;
    emit(this.event);
  }
}
