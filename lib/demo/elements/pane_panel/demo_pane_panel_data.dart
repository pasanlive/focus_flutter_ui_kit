import 'package:select2dot1/select2dot1.dart';

class DemoPanePanelData {
  static List<SingleCategoryModel> paneFeatureList() => [
        SingleCategoryModel(
          singleItemCategoryList: [
            SingleItemCategoryModel(value: '1', nameSingleItem: 'With Pace Bar'),
            SingleItemCategoryModel(value: '2', nameSingleItem: 'With Pace Bar (Bottom)'),
            SingleItemCategoryModel(value: '3', nameSingleItem: 'With Pace Bar & Spinner'),
            SingleItemCategoryModel(value: '4', nameSingleItem: 'With Pace Bar & Custom Spinner'),
          ],
        ),
      ];
}
