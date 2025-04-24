import 'package:enum_to_string/enum_to_string.dart';
import 'package:select2dot1/select2dot1.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoNotificationData {
  static SingleItemCategoryModel selectedToastColor() {
    return  SingleItemCategoryModel(value: 'success', nameSingleItem: 'Success');
  }

  static List<SingleCategoryModel> toastColorList() {
    return [
      SingleCategoryModel(
        nameCategory: 'Status',
        singleItemCategoryList: [
          SingleItemCategoryModel(value: FUIColorScheme.success.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.success, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.complete.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.complete, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.warning.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.warning, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.error.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.error, camelCase: true)),
        ],
      ),
      SingleCategoryModel(
        nameCategory: 'Other Color Schemes',
        singleItemCategoryList: [
          SingleItemCategoryModel(value: FUIColorScheme.primary.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.primary, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.secondary.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.secondary, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.ruby.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.ruby, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.tartOrange.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.tartOrange, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.papayaWhip.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.papayaWhip, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.opal.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.opal, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.lightGrey.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.lightGrey, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.purple.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.purple, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.berry.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.berry, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.cobalt.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.cobalt, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.teal.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.teal, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.black.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.black, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.denim.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.denim, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.prussian.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.prussian, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.bumbleBee.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.bumbleBee, camelCase: true)),
          SingleItemCategoryModel(value: FUIColorScheme.banana.name, nameSingleItem: EnumToString.convertToString(FUIColorScheme.banana, camelCase: true)),
        ],
      ),
    ];
  }

  static List<SingleCategoryModel> durationList() {
    return [
       SingleCategoryModel(singleItemCategoryList: [
        SingleItemCategoryModel(value: '100', nameSingleItem: '100 millisecond(s)'),
        SingleItemCategoryModel(value: '200', nameSingleItem: '200 millisecond(s)'),
        SingleItemCategoryModel(value: '300', nameSingleItem: '300 millisecond(s)'),
        SingleItemCategoryModel(value: '500', nameSingleItem: '500 millisecond(s)'),
        SingleItemCategoryModel(value: '800', nameSingleItem: '800 millisecond(s)'),
        SingleItemCategoryModel(value: '1000', nameSingleItem: '1 second(s)'),
        SingleItemCategoryModel(value: '3000', nameSingleItem: '3 second(s)'),
        SingleItemCategoryModel(value: '5000', nameSingleItem: '5 second(s)'),
      ]),
    ];
  }

  static SingleItemCategoryModel selectedDurationList() {
    return  SingleItemCategoryModel(value: '3000', nameSingleItem: '3 second(s)');
  }

  static SingleItemCategoryModel selectedAniDurationList() {
    return  SingleItemCategoryModel(value: '300', nameSingleItem: '300 millisecond(s)');
  }

  static List<SingleCategoryModel> toastPositionList() {
    return [
      SingleCategoryModel(singleItemCategoryList: [
        SingleItemCategoryModel(value: FUIToastPosition.top.toNameString(), nameSingleItem: FUIToastPosition.top.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.topLeft.toNameString(), nameSingleItem: FUIToastPosition.topLeft.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.topRight.toNameString(), nameSingleItem: FUIToastPosition.topRight.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.center.toNameString(), nameSingleItem: FUIToastPosition.center.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.centerLeft.toNameString(), nameSingleItem: FUIToastPosition.centerLeft.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.centerRight.toNameString(), nameSingleItem: FUIToastPosition.centerRight.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.bottom.toNameString(), nameSingleItem: FUIToastPosition.bottom.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.bottomLeft.toNameString(), nameSingleItem: FUIToastPosition.bottomLeft.toTitleString()),
        SingleItemCategoryModel(value: FUIToastPosition.bottomRight.toNameString(), nameSingleItem: FUIToastPosition.bottomRight.toTitleString()),
      ]),
    ];
  }

  static List<SingleCategoryModel> toastDecoBarList() {
    return [
      SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(value: FUIToastDecoBarPosition.top.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.top, camelCase: true)),
          SingleItemCategoryModel(value: FUIToastDecoBarPosition.left.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.left, camelCase: true)),
          SingleItemCategoryModel(value: FUIToastDecoBarPosition.right.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.right, camelCase: true)),
          SingleItemCategoryModel(value: FUIToastDecoBarPosition.bottom.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.bottom, camelCase: true)),
          SingleItemCategoryModel(value: FUIToastDecoBarPosition.none.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.none, camelCase: true)),
        ],
      ),
    ];
  }

  static SingleItemCategoryModel selectedToastDecoBarPosition() {
    return SingleItemCategoryModel(value: FUIToastDecoBarPosition.left.name, nameSingleItem: EnumToString.convertToString(FUIToastDecoBarPosition.left, camelCase: true));
  }

  static SingleItemCategoryModel selectedToastPosition() {
    return SingleItemCategoryModel(value: FUIToastPosition.top.toNameString(), nameSingleItem: FUIToastPosition.top.toTitleString());
  }

  static SingleItemCategoryModel selectedType3ToastPosition() {
    return SingleItemCategoryModel(value: FUIToastPosition.topRight.toNameString(), nameSingleItem: FUIToastPosition.topRight.toTitleString());
  }

  static List<SingleCategoryModel> sideIconPositionList() {
    return [
      SingleCategoryModel(singleItemCategoryList: [
        SingleItemCategoryModel(value: FUIToastIconPosition.left.name, nameSingleItem: EnumToString.convertToString(FUIToastIconPosition.left, camelCase: true)),
        SingleItemCategoryModel(value: FUIToastIconPosition.right.name, nameSingleItem: EnumToString.convertToString(FUIToastIconPosition.right, camelCase: true)),
      ]),
    ];
  }

  static SingleItemCategoryModel selectedSideIconPosition() {
    return SingleItemCategoryModel(value: FUIToastIconPosition.left.name, nameSingleItem: EnumToString.convertToString(FUIToastIconPosition.left, camelCase: true));
  }

  static List<SingleCategoryModel> modalAnimationList() {
    return [
      SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(value: FUIAnimationType.bounce.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounce, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flash.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flash, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.headShake.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.headShake, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.heartBeat.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.heartBeat, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.jello.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.jello, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.pulse.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.pulse, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rubberBand.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rubberBand, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.shake.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.shake, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.swing.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.swing, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.tada.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.tada, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.wobble.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.wobble, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.bounceIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounceIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.bounceInDown.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounceInDown, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.bounceInLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounceInLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.bounceInRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounceInRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.bounceInUp.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.bounceInUp, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInDown.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInDown, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInDownBig.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInDownBig, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInLeftBig.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInLeftBig, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInRightBig.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInRightBig, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInUp.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInUp, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.fadeInUpBig.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInUpBig, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flip.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flip, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flipInX.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flipInX, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flipInY.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flipInY, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flipOutX.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flipOutX, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.flipOutY.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.flipOutY, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.lightSpeedIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.lightSpeedIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.lightSpeedOut.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.lightSpeedOut, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rotateIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rotateIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rotateInDownLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rotateInDownLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rotateInDownRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rotateInDownRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rotateInUpLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rotateInUpLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rotateInUpRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rotateInUpRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slideInDown.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slideInDown, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slideInLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slideInLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slideInRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slideInRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slideInUp.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slideInUp, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slitInDiagonal.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slitInDiagonal, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slitInHorizontal.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slitInHorizontal, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.slitInVertical.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.slitInVertical, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.hinge.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.hinge, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.jackInTheBox.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.jackInTheBox, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.rollIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.rollIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.zoomIn.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.zoomIn, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.zoomInDown.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.zoomInDown, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.zoomInLeft.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.zoomInLeft, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.zoomInRight.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.zoomInRight, camelCase: true)),
          SingleItemCategoryModel(value: FUIAnimationType.zoomInUp.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.zoomInUp, camelCase: true)),
        ],
      ),
    ];
  }

  static SingleItemCategoryModel selectedModalAnimation() {
    return SingleItemCategoryModel(value: FUIAnimationType.fadeInDown.name, nameSingleItem: EnumToString.convertToString(FUIAnimationType.fadeInDown, camelCase: true));
  }

  static List<SingleCategoryModel> modalSeparatorList() {
    return [
       SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(value: 'true', nameSingleItem: 'Yes'),
          SingleItemCategoryModel(value: 'false', nameSingleItem: 'No'),
        ],
      ),
    ];
  }

  static SingleItemCategoryModel selectedModalSeparatorHeader() {
    return  SingleItemCategoryModel(value: 'true', nameSingleItem: 'Yes');
  }

  static SingleItemCategoryModel selectedModalSeparatorFooter() {
    return  SingleItemCategoryModel(value: 'false', nameSingleItem: 'No');
  }

  static List<SingleCategoryModel> modalFeaturesList() {
    return [
       SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(value: '1', nameSingleItem: 'With Pace Bar (Top)'),
          SingleItemCategoryModel(value: '2', nameSingleItem: 'With Pace Bar (Bottom)'),
          SingleItemCategoryModel(value: '3', nameSingleItem: 'With Pace Bar & Spinner'),
          SingleItemCategoryModel(value: '4', nameSingleItem: 'With Pace Bar & Custom Spinner'),
        ],
      ),
    ];
  }

  static SingleItemCategoryModel selectedModalFeature() {
    return  SingleItemCategoryModel(value: '1', nameSingleItem: 'With Pace Bar (Top)');
  }
}
