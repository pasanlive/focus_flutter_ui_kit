import 'package:flutter_bloc/flutter_bloc.dart';

import '../../exports.dart';

class DemoPaneFeatureController extends Cubit<String> {
  String feature = DemoPanePanelData.paneFeatureList().first.singleItemCategoryList.first.value.toString();

  DemoPaneFeatureController(super.feature);

  changeTo(String feature) {
    this.feature = feature;
    emit(feature);
  }
}