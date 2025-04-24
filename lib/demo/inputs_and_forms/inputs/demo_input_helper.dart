import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

mixin DemoInputHelper {
  List<SingleCategoryModel> demoSelectDataList1() {
    return [
       SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(nameSingleItem: 'Alaska'),
          SingleItemCategoryModel(nameSingleItem: 'Alabama'),
          SingleItemCategoryModel(nameSingleItem: 'Arizona'),
          SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
          SingleItemCategoryModel(nameSingleItem: 'California'),
          SingleItemCategoryModel(nameSingleItem: 'Colorado'),
          SingleItemCategoryModel(nameSingleItem: 'Connecticut'),
          SingleItemCategoryModel(nameSingleItem: 'Delaware'),
          SingleItemCategoryModel(nameSingleItem: 'Florida'),
          SingleItemCategoryModel(nameSingleItem: 'Georgia'),
          SingleItemCategoryModel(nameSingleItem: 'Hawaii'),
          SingleItemCategoryModel(nameSingleItem: 'Idaho'),
          SingleItemCategoryModel(nameSingleItem: 'IllinoisIndiana'),
          SingleItemCategoryModel(nameSingleItem: 'Iowa'),
          SingleItemCategoryModel(nameSingleItem: 'Kansas'),
          SingleItemCategoryModel(nameSingleItem: 'Kentucky'),
          SingleItemCategoryModel(nameSingleItem: 'Louisiana'),
          SingleItemCategoryModel(nameSingleItem: 'Maine'),
          SingleItemCategoryModel(nameSingleItem: 'Maryland'),
          SingleItemCategoryModel(nameSingleItem: 'Massachusetts'),
          SingleItemCategoryModel(nameSingleItem: 'Michigan'),
          SingleItemCategoryModel(nameSingleItem: 'Minnesota'),
          SingleItemCategoryModel(nameSingleItem: 'Mississippi'),
          SingleItemCategoryModel(nameSingleItem: 'Missouri'),
          SingleItemCategoryModel(nameSingleItem: 'MontanaNebraska'),
          SingleItemCategoryModel(nameSingleItem: 'Nevada'),
          SingleItemCategoryModel(nameSingleItem: 'New Hampshire'),
          SingleItemCategoryModel(nameSingleItem: 'New Jersey'),
          SingleItemCategoryModel(nameSingleItem: 'New Mexico'),
          SingleItemCategoryModel(nameSingleItem: 'New York'),
          SingleItemCategoryModel(nameSingleItem: 'North Carolina'),
          SingleItemCategoryModel(nameSingleItem: 'North Dakota'),
          SingleItemCategoryModel(nameSingleItem: 'Ohio'),
          SingleItemCategoryModel(nameSingleItem: 'Oklahoma'),
          SingleItemCategoryModel(nameSingleItem: 'Oregon'),
          SingleItemCategoryModel(nameSingleItem: 'PennsylvaniaRhode Island'),
          SingleItemCategoryModel(nameSingleItem: 'South Carolina'),
          SingleItemCategoryModel(nameSingleItem: 'South Dakota'),
          SingleItemCategoryModel(nameSingleItem: 'Tennessee'),
          SingleItemCategoryModel(nameSingleItem: 'Texas'),
          SingleItemCategoryModel(nameSingleItem: 'Utah'),
          SingleItemCategoryModel(nameSingleItem: 'Vermont'),
          SingleItemCategoryModel(nameSingleItem: 'Virginia'),
          SingleItemCategoryModel(nameSingleItem: 'Washington'),
          SingleItemCategoryModel(nameSingleItem: 'West Virginia'),
          SingleItemCategoryModel(nameSingleItem: 'Wisconsin'),
          SingleItemCategoryModel(nameSingleItem: 'Wyoming'),
        ],
      ),
    ];
  }

  List<SingleCategoryModel> demoSelectDataList2() {
    return [
       SingleCategoryModel(
        nameCategory: 'Alaskan/Hawaiian Time Zone',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            nameSingleItem: 'Alaska',
            extraInfoSingleItem: '1395 Lincoln Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Hawaii',
            extraInfoSingleItem: '4880 Michigan Avenue',
          ),
        ],
      ),
       SingleCategoryModel(
        nameCategory: 'Eastern Time Zone',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            nameSingleItem: 'Connecticut',
            extraInfoSingleItem: '695 Center Avenue',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Massechusetts',
            extraInfoSingleItem: '2085 Heron Way',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'North Carolina',
            extraInfoSingleItem: '1034 Conference Center Way',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'South Carolina',
            extraInfoSingleItem: '3865 Hickory Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Vermont',
            extraInfoSingleItem: '3159 Sumner Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'West Virginia',
            extraInfoSingleItem: '2506 Hall Street',
          ),
        ],
      ),
       SingleCategoryModel(
        nameCategory: 'Pacific Time Zone',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            nameSingleItem: 'California',
            extraInfoSingleItem: '3878 Chapel Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Nevada',
            extraInfoSingleItem: '4045 Lucy Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Oregon',
            extraInfoSingleItem: '83 Kenwood Place',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Washington',
            extraInfoSingleItem: '3573 Pallet Street',
          ),
        ],
      ),
       SingleCategoryModel(
        nameCategory: 'Central Time Zone',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            nameSingleItem: 'Alabama',
            extraInfoSingleItem: '4446 Jarvisville Road',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Arkansas',
            extraInfoSingleItem: '4111 Little Acres Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Illonois',
            extraInfoSingleItem: '3444 Clark Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Iowa',
            extraInfoSingleItem: '4610 Lucy Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Kansas',
            extraInfoSingleItem: '323 Stratford Drive',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Kentucky',
            extraInfoSingleItem: '3631 Vine Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Louisiana',
            extraInfoSingleItem: '3283 Godfrey Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Minnesota',
            extraInfoSingleItem: '4838 Ridenour Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Mississippi',
            extraInfoSingleItem: '38 Ray Court',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Missouri',
            extraInfoSingleItem: '1360 Bingamon Road',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Oklahoma',
            extraInfoSingleItem: '1636 Sundown Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'South Dakota',
            extraInfoSingleItem: '1091 Elm Drive',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Texas',
            extraInfoSingleItem: '4764 Bond Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Tennessee',
            extraInfoSingleItem: '4540 Oakmound Road',
          ),
        ],
      ),
       SingleCategoryModel(
        nameCategory: 'Mountain Time Zone',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            nameSingleItem: 'Arizona',
            extraInfoSingleItem: '4473 Prospect Street',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Colorado',
            extraInfoSingleItem: '2247 Nuzum Court',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Idaho',
            extraInfoSingleItem: '1182 Bailey Drive',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Montana',
            extraInfoSingleItem: '4530 Elk City Road',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Nebraska',
            extraInfoSingleItem: '2012 Armbrester Drive',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'New Mexico',
            extraInfoSingleItem: '2393 Wines Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'North Dakota',
            extraInfoSingleItem: '4190 Don Jackson Lane',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Utah',
            extraInfoSingleItem: '468 Green Acres Road',
          ),
          SingleItemCategoryModel(
            nameSingleItem: 'Wyoming',
            extraInfoSingleItem: '1898 Sardis Sta',
          ),
        ],
      ),
    ];
  }

  List<SingleCategoryModel> demoSelectDataList3() {
    return [
       SingleCategoryModel(
        nameCategory: 'Managers',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
            ),
            nameSingleItem: 'Mckinley Davis',
            extraInfoSingleItem: 'Seattle Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
            ),
            nameSingleItem: 'Tanner Bray',
            extraInfoSingleItem: 'Seattle Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
            ),
            nameSingleItem: 'Mannas Khan',
            extraInfoSingleItem: 'New York Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
            ),
            nameSingleItem: 'Savanna Donovan',
            extraInfoSingleItem: 'New York Branch',
          ),
        ],
      ),
       SingleCategoryModel(
        nameCategory: 'Team Members',
        singleItemCategoryList: [
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
            ),
            nameSingleItem: 'Mike Cohen',
            extraInfoSingleItem: 'Seattle Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
            ),
            nameSingleItem: 'Dana Curtis',
            extraInfoSingleItem: 'Seattle Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
            ),
            nameSingleItem: 'Jeremy Mays',
            extraInfoSingleItem: 'Seattle Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
            ),
            nameSingleItem: 'Abdiel Roberson',
            extraInfoSingleItem: 'New York Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
            ),
            nameSingleItem: 'Gregory Flores',
            extraInfoSingleItem: 'New York Branch',
          ),
          SingleItemCategoryModel(
            avatarSingleItem: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
            ),
            nameSingleItem: 'Juliana Evans',
            extraInfoSingleItem: 'New York Branch',
          ),
        ],
      ),
    ];
  }
}
