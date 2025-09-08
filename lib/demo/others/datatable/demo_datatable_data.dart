import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:select2dot1/select2dot1.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoDatatableData {
  final BuildContext context;

  DemoDatatableData(this.context);

  List<SingleCategoryModel> colorSchemeList() {
    List<SingleItemCategoryModel> list = [];
    Iterator<UIColorScheme> itr = UIColorScheme.values.iterator;

    while (itr.moveNext()) {
      UIColorScheme fuiColorScheme = itr.current;
      list.add(SingleItemCategoryModel(nameSingleItem: fuiColorScheme.name, value: fuiColorScheme.name));
    }

    return [
      SingleCategoryModel(
        singleItemCategoryList: list,
      ),
    ];
  }

  List<DataRow2> generateStaticData1(UIColorScheme fuiColorScheme) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUIDataTableCellHelper dtCellHelper = FUIDataTableCellHelper(context);
    List<DataRow2> rowList = [];

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: Text('Mckinley Davis'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mckinley Davis')),
          DataCell(dtCellHelper.genData(text: 'Seattle Branch')),
          DataCell(dtCellHelper.genData(text: 'Project Manager')),
          DataCell(
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                FUITextPill(text: const Text('Cygnus'), fuiColorScheme: UIColorScheme.cobalt),
                FUITextPill(text: const Text('Lepus'), fuiColorScheme: UIColorScheme.purple),
              ],
            ),
          ),
          DataCell(dtCellHelper.genData(text: '03/01/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Mike Cohen'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mike Cohen')),
          DataCell(dtCellHelper.genData(text: 'Seattle Branch')),
          DataCell(dtCellHelper.genData(text: 'Backend Developer')),
          DataCell(
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                FUITextPill(text: const Text('Lepus'), fuiColorScheme: UIColorScheme.purple),
              ],
            ),
          ),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Dana Curtis'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Dana Curtis')),
          DataCell(dtCellHelper.genData(text: 'Seattle Branch')),
          DataCell(dtCellHelper.genData(text: 'UX/UI Front End Developer')),
          DataCell(
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                FUITextPill(text: const Text('Lepus'), fuiColorScheme: UIColorScheme.purple),
              ],
            ),
          ),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Tanner Bray'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Tanner Bray')),
          DataCell(dtCellHelper.genData(text: 'Seattle Branch')),
          DataCell(dtCellHelper.genData(text: 'Team Lead')),
          DataCell(
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                FUITextPill(text: Text('Cygnus'), fuiColorScheme: UIColorScheme.cobalt),
              ],
            ),
          ),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Mannas Khan'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mannas Khan')),
          DataCell(dtCellHelper.genData(text: 'New York Branch')),
          DataCell(dtCellHelper.genData(text: 'Head of Compliance')),
          DataCell(dtCellHelper.genData(text: '')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Savanna Donovan'),
                child: FUIAvatar(
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Savanna Donovan')),
          DataCell(dtCellHelper.genData(text: 'New York Branch')),
          DataCell(dtCellHelper.genData(text: 'Business Analyst')),
          DataCell(
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                FUITextPill(text: const Text('Cygnus'), fuiColorScheme: UIColorScheme.cobalt),
              ],
            ),
          ),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
          DataCell(
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 15,
                runSpacing: 8,
                children: [
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.pencil,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                  FUIButtonLinkIcon(
                    icon: Icon(
                      CupertinoIcons.delete,
                      size: 13,
                      color: fuiColors.textBody,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return rowList;
  }

  List<DataRow2> generateStaticData2(UIColorScheme fuiColorScheme, FUIDataTable2Size fuiDataTable2Size) {
    FUIDataTableCellHelper dtCellHelper = FUIDataTableCellHelper(context, size: fuiDataTable2Size);
    List<DataRow2> rowList = [];

    FUIAvatarSize fuiAvatarSize;

    switch (fuiDataTable2Size) {
      case FUIDataTable2Size.small:
        fuiAvatarSize = FUIAvatarSize.small;
        break;
      case FUIDataTable2Size.large:
        fuiAvatarSize = FUIAvatarSize.large;
        break;
      case FUIDataTable2Size.medium:
      default:
        fuiAvatarSize = FUIAvatarSize.medium;
        break;
    }

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Mckinley Davis'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mckinley Davis')),
          DataCell(dtCellHelper.genData(text: 'Project Manager')),
          DataCell(dtCellHelper.genData(text: '03/01/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Mike Cohen'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mike Cohen')),
          DataCell(dtCellHelper.genData(text: 'Backend Developer')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Dana Curtis'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Dana Curtis')),
          DataCell(dtCellHelper.genData(text: 'UX/UI Front End Developer')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Tanner Bray'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Tanner Bray')),
          DataCell(dtCellHelper.genData(text: 'Team Lead')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Mannas Khan'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Mannas Khan')),
          DataCell(dtCellHelper.genData(text: 'Head of Compliance')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    rowList.add(
      DataRow2(
        cells: [
          DataCell(
            Center(
              child: FUITooltip(
                tooltip: const Text('Savanna Donovan'),
                child: FUIAvatar(
                  fuiAvatarSize: fuiAvatarSize,
                  fuiColorScheme: fuiColorScheme,
                  avatar: const AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
                ),
              ),
            ),
          ),
          DataCell(dtCellHelper.genData(text: 'Savanna Donovan')),
          DataCell(dtCellHelper.genData(text: 'Business Analyst')),
          DataCell(dtCellHelper.genData(text: '15/07/2023', alignment: FUIDataTable2Alignment.center)),
        ],
      ),
    );

    return rowList;
  }
}

class DemoMeteoriteLandingModel {
  int id;
  String name;
  num? mass;
  String? recClass;
  DateTime? onYear;
  num lat;
  num lon;
  bool selected = false;

  DemoMeteoriteLandingModel({
    required this.id,
    required this.name,
    this.mass,
    this.recClass,
    this.onYear,
    required this.lat,
    required this.lon,
  });
}

class DemoPaginatedDataSource extends DataTableSource {
  BuildContext context;
  late FUIDataTableCellHelper dtCellHelper;
  int _selectedCount = 0;

  /// Static Dummy Data List...
  List<DemoMeteoriteLandingModel> mlList = [
    DemoMeteoriteLandingModel(
        id: 1, name: "Aachen", mass: 21, recClass: "L5", onYear: DateTime.parse('1880-01-01T00:00:00.000'), lat: 50.775000, lon: 6.083330),
    DemoMeteoriteLandingModel(
        id: 2, name: "Aarhus", mass: 720, recClass: "H6", onYear: DateTime.parse('1951-01-01T00:00:00.000'), lat: 56.183330, lon: 10.233330),
    DemoMeteoriteLandingModel(
        id: 6, name: "Abee", mass: 107000, recClass: "EH4", onYear: DateTime.parse('1952-01-01T00:00:00.000'), lat: 54.216670, lon: -113.000000),
    DemoMeteoriteLandingModel(
        id: 10, name: "Acapulco", mass: 1914, recClass: "Acapulcoite", onYear: DateTime.parse('1976-01-01T00:00:00.000'), lat: 16.883330, lon: -99.900000),
    DemoMeteoriteLandingModel(
        id: 370, name: "Achiras", mass: 780, recClass: "L6", onYear: DateTime.parse('1902-01-01T00:00:00.000'), lat: -33.166670, lon: -64.950000),
    DemoMeteoriteLandingModel(
        id: 379, name: "Adhi Kot", mass: 4239, recClass: "EH4", onYear: DateTime.parse('1919-01-01T00:00:00.000'), lat: 32.100000, lon: 71.800000),
    DemoMeteoriteLandingModel(
        id: 390, name: "Adzhi-Bogdo (stone)", mass: 910, recClass: "LL3-6", onYear: DateTime.parse('1949-01-01T00:00:00.000'), lat: 44.833330, lon: 95.166670),
    DemoMeteoriteLandingModel(
        id: 392, name: "Agen", mass: 30000, recClass: "H5", onYear: DateTime.parse('1814-01-01T00:00:00.000'), lat: 44.216670, lon: 0.616670),
    DemoMeteoriteLandingModel(
        id: 398, name: "Aguada", mass: 1620, recClass: "L6", onYear: DateTime.parse('1930-01-01T00:00:00.000'), lat: -31.600000, lon: -65.233330),
    DemoMeteoriteLandingModel(
        id: 417, name: "Aguila Blanca", mass: 1440, recClass: "L", onYear: DateTime.parse('1920-01-01T00:00:00.000'), lat: -30.866670, lon: -64.550000),
    DemoMeteoriteLandingModel(
        id: 423,
        name: "Aioun el Atrouss",
        mass: 1000,
        recClass: "Diogenite-pm",
        onYear: DateTime.parse('1974-01-01T00:00:00.000'),
        lat: 16.398060,
        lon: -9.570280),
    DemoMeteoriteLandingModel(
        id: 424, name: "Aïr", mass: 24000, recClass: "L6", onYear: DateTime.parse('1925-01-01T00:00:00.000'), lat: 19.083330, lon: 8.383330),
    DemoMeteoriteLandingModel(
        id: 425, name: "Aire-sur-la-Lys", recClass: "Unknown", onYear: DateTime.parse('1769-01-01T00:00:00.000'), lat: 50.666670, lon: 2.333330),
    DemoMeteoriteLandingModel(
        id: 426, name: "Akaba", mass: 779, recClass: "L6", onYear: DateTime.parse('1949-01-01T00:00:00.000'), lat: 29.516670, lon: 35.050000),
    DemoMeteoriteLandingModel(
        id: 427, name: "Akbarpur", mass: 1800, recClass: "H4", onYear: DateTime.parse('1838-01-01T00:00:00.000'), lat: 29.716670, lon: 77.950000),
    DemoMeteoriteLandingModel(
        id: 432, name: "Akwanga", mass: 3000, recClass: "H", onYear: DateTime.parse('1959-01-01T00:00:00.000'), lat: 8.916670, lon: 8.433330),
    DemoMeteoriteLandingModel(
        id: 433, name: "Akyumak", mass: 50000, recClass: "Iron, IVA", onYear: DateTime.parse('1981-01-01T00:00:00.000'), lat: 39.916670, lon: 42.816670),
    DemoMeteoriteLandingModel(
        id: 446, name: "Al Rais", mass: 160, recClass: "CR2-an", onYear: DateTime.parse('1957-01-01T00:00:00.000'), lat: 24.416670, lon: 39.516670),
    DemoMeteoriteLandingModel(
        id: 447, name: "Al Zarnkh", mass: 700, recClass: "LL5", onYear: DateTime.parse('2001-01-01T00:00:00.000'), lat: 13.660330, lon: 28.960000),
    DemoMeteoriteLandingModel(
        id: 448, name: "Alais", mass: 6000, recClass: "CI1", onYear: DateTime.parse('1806-01-01T00:00:00.000'), lat: 44.116670, lon: 4.083330),
    DemoMeteoriteLandingModel(
        id: 453, name: "Albareto", mass: 2000, recClass: "L/LL4", onYear: DateTime.parse('1766-01-01T00:00:00.000'), lat: 44.650000, lon: 11.016670),
    DemoMeteoriteLandingModel(
        id: 454, name: "Alberta", mass: 625, recClass: "L", onYear: DateTime.parse('1949-01-01T00:00:00.000'), lat: 2.000000, lon: 22.666670),
    DemoMeteoriteLandingModel(
        id: 458,
        name: "Alby sur Chéran",
        mass: 252,
        recClass: "Eucrite-mmict",
        onYear: DateTime.parse('2002-01-01T00:00:00.000'),
        lat: 45.821330,
        lon: 6.015330),
    DemoMeteoriteLandingModel(
        id: 461, name: "Aldsworth", mass: 700, recClass: "LL5", onYear: DateTime.parse('1835-01-01T00:00:00.000'), lat: 51.783330, lon: -1.783330),
    DemoMeteoriteLandingModel(
        id: 462, name: "Aleppo", mass: 3200, recClass: "L6", onYear: DateTime.parse('1873-01-01T00:00:00.000'), lat: 36.233330, lon: 37.133330),
    DemoMeteoriteLandingModel(
        id: 463, name: "Alessandria", mass: 908, recClass: "H5", onYear: DateTime.parse('1860-01-01T00:00:00.000'), lat: 44.883330, lon: 8.750000),
    DemoMeteoriteLandingModel(
        id: 465, name: "Alexandrovsky", mass: 9251, recClass: "H4", onYear: DateTime.parse('1900-01-01T00:00:00.000'), lat: 50.950000, lon: 31.816670),
    DemoMeteoriteLandingModel(
        id: 466, name: "Alfianello", mass: 228000, recClass: "L6", onYear: DateTime.parse('1883-01-01T00:00:00.000'), lat: 45.266670, lon: 10.150000),
    DemoMeteoriteLandingModel(
        id: 2276, name: "Allegan", mass: 32000, recClass: "H5", onYear: DateTime.parse('1899-01-01T00:00:00.000'), lat: 42.533330, lon: -85.883330),
    DemoMeteoriteLandingModel(
        id: 2278, name: "Allende", mass: 2000000, recClass: "CV3", onYear: DateTime.parse('1969-01-01T00:00:00.000'), lat: 26.966670, lon: -105.316670),
  ];

  DemoPaginatedDataSource(this.context) {
    dtCellHelper = FUIDataTableCellHelper(context);
  }

  void sort<T>(Comparable<T> Function(DemoMeteoriteLandingModel ml) getField, bool ascending) {
    mlList.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending ? Comparable.compare(aValue, bValue) : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }

  @override
  DataRow? getRow(int index) {
    DemoMeteoriteLandingModel model = mlList[index];
    FUIDataTable2Theme dt2Theme = context.theme.fuiDataTable2;

    return DataRow2.byIndex(
      index: index,
      selected: model.selected,
      color: WidgetStateProperty.all(model.selected ? dt2Theme.rowSelectedColor : dt2Theme.rowColor),
      onSelectChanged: (checked) {
        if (model.selected != checked) {
          _selectedCount += checked! ? 1 : -1;
          assert(_selectedCount >= 0);
          model.selected = checked;

          notifyListeners();
        }
      },
      cells: [
        DataCell(dtCellHelper.genData(text: "${model.id}", alignment: FUIDataTable2Alignment.center)),
        DataCell(dtCellHelper.genData(text: model.name)),
        (model.mass == null)
            ? DataCell(dtCellHelper.genData(text: "- NA -", alignment: FUIDataTable2Alignment.center))
            : DataCell(dtCellHelper.genData(text: "${model.mass!}", alignment: FUIDataTable2Alignment.center)),
        DataCell(dtCellHelper.genData(text: model.recClass)),
        (model.onYear == null)
            ? DataCell(dtCellHelper.genData(text: "- NA -", alignment: FUIDataTable2Alignment.center))
            : DataCell(dtCellHelper.genData(text: "${model.onYear!.year}", alignment: FUIDataTable2Alignment.center)),
        DataCell(dtCellHelper.genData(text: "${model.lat}", alignment: FUIDataTable2Alignment.right)),
        DataCell(dtCellHelper.genData(text: "${model.lon}", alignment: FUIDataTable2Alignment.right)),
      ],
    );
  }

  @override
  int get rowCount => mlList.length;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  bool get isRowCountApproximate => false;

  void selectAll(bool? checked) {
    for (final model in mlList) {
      model.selected = checked ?? false;
    }

    _selectedCount = (checked ?? false) ? mlList.length : 0;

    notifyListeners();
  }
}

class DemoPaginatedDataSourceAsync extends AsyncDataTableSource {
  final BuildContext context;
  final String? search;
  final String? sortFieldName;
  final bool? sortAsc;

  late FUIDataTableCellHelper dtCellHelper;

  DemoPaginatedDataSourceAsync({
    required this.context,
    this.search,
    this.sortFieldName,
    this.sortAsc,
  }) {
    dtCellHelper = FUIDataTableCellHelper(context);
  }

  Future<Response> listBySearchTerm(int startIndex, int count) async {
    String url = 'https://focusui.cloudlegato.my/api/meteoroid-landings';

    Map<String, dynamic> q = {
      'search': search,
      'sortFieldName': sortFieldName,
      'sortAsc': '$sortAsc',
      'startIndex': '$startIndex',
      'drawCount': '$count',
    };

    return HttpUtils.getForFullResponse(url, queryParameters: q);
  }

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    FUIDataTable2Theme dt2Theme = context.theme.fuiDataTable2;
    DateFormat yearFormat = DateFormat("yyyy-MM-dd");

    try {
      Response resp = await listBySearchTerm(startIndex, count);

      if (resp.statusCode != 200) {
        return AsyncRowsResponse(0, []);
      }

      var r = jsonDecode(resp.body);

      List<DataRow> drList = [];

      for (var item in r['result']) {
        var model = DemoMeteoriteLandingModel(
          id: item['id'],
          name: item['name'],
          mass: item['mass'],
          recClass: item['recClass'],
          onYear: (item['year'] != null) ? yearFormat.parse(item['year']) : null,
          lat: item['recLat'] ?? 0,
          lon: item['recLong'] ?? 0,
        );

        ValueKey vk = ValueKey<int>(model.id);
        model.selected = selectionRowKeys.contains(vk);

        drList.add(DataRow(
          key: vk,
          selected: model.selected,
          onSelectChanged: (checked) {
            if (checked != null) {
              model.selected = checked;
              setRowSelection(vk, checked);
            }
          },
          color: WidgetStateProperty.all(model.selected ? dt2Theme.rowSelectedColor : dt2Theme.rowColor),
          cells: [
            DataCell(dtCellHelper.genData(text: "${model.id}", alignment: FUIDataTable2Alignment.center)),
            DataCell(dtCellHelper.genData(text: model.name)),
            (model.mass == null)
                ? DataCell(dtCellHelper.genData(text: "- NA -", alignment: FUIDataTable2Alignment.center))
                : DataCell(dtCellHelper.genData(text: "${model.mass!}", alignment: FUIDataTable2Alignment.center)),
            DataCell(dtCellHelper.genData(text: model.recClass)),
            (model.onYear == null)
                ? DataCell(dtCellHelper.genData(text: "- NA -", alignment: FUIDataTable2Alignment.center))
                : DataCell(dtCellHelper.genData(text: "${model.onYear!.year}", alignment: FUIDataTable2Alignment.center)),
            DataCell(dtCellHelper.genData(text: "${model.lat}", alignment: FUIDataTable2Alignment.right)),
            DataCell(dtCellHelper.genData(text: "${model.lon}", alignment: FUIDataTable2Alignment.right)),
          ],
        ));
      }

      return AsyncRowsResponse(
        r['totalRecords'],
        drList,
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
