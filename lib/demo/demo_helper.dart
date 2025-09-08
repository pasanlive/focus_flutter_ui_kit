import 'package:flutter/material.dart';
import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';


mixin DemoHelper {
  static Widget buildGradientBox() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withValues(alpha: 0.3),
              Colors.black.withValues(alpha: 0.9),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [
              0.0,
              0.3,
              0.7,
            ],
          ),
        ),
      ),
    );
  }

  static UIColorScheme randomFUIColorScheme() {
    var vList = UIColorScheme.values.toList();
    vList.shuffle();

    return vList[0];
  }

  static const Map<String, ImageProvider> bgImgProviderMap = {
    'bg01': AssetImage('assets/demo-background/bg01.jpg'),
    'bg02': AssetImage('assets/demo-background/bg02.jpg'),
    'bg03': AssetImage('assets/demo-background/bg03.jpg'),
    'bg04': AssetImage('assets/demo-background/bg04.jpg'),
    'bg05': AssetImage('assets/demo-background/bg05.jpg'),
    'bg06': AssetImage('assets/demo-background/bg06.jpg'),
    'bg07': AssetImage('assets/demo-background/bg07.jpg'),
  };

  static const Map<String, String> bgImgBlurHashMap = {
    'bg01':
        '|02YkZRjD%ofRjayM{j[xu00t7t7WBj[ofofWBt7-;WBM{ofayj[t7WBRjD%M{xuoft7ofayofRjxut7RjayRjWBj[WBofRjWBoffQayWBfQofoft7ofj[ayWBfQj[ayayRjWBayoft7ofj[WBWBayayj[ofWBj[ayfQWB',
    'bg02':
        '|02=\$ED%xuM{IUofWBM{%Mt7Rjt7t7ofoft7Rjj[IUj[ofRjofM{t7t7RjRjRjWBRjWBayWBt7j[WBayM{%MfQxuWBWBRjj[j[WBofRjj[ofWBj[WBofj[ayj[ofj[ofWBj[ayj[ayofayRjofWBofayayofofWBayofay',
    'bg03':
        '|04xlD%MxuRjRjayRjt7WBt7xuM{t7ofWBWBofofoft7ofWBt7ofRjRjayofj[ofayj[ofWBWBWBayRjayofWBWBt7t7fQayofWBt7ayofofj[ayWBj[ayj[ofWBfQWBWBj[ayofayofWBj[j[ofWBayj[ofj[ayayayay',
    'bg04':
        '|25E\$[_3ayRjM{RjRjRjWBt7ofRjayj[ayj[ofj[WBM{RjRjWBWBoft7ayofofayWBoft7ayWBWBofofayayayofofayWBWBWBoffQfQayayfQj[ofofWBj[ofofayayayj[ayj[ayWBWBayj[ofayayWBj[j[ofj[j[ay',
    'bg05':
        '|26*dh9FofD%M{WBofj[j[4nM{%MofxuWBWBayj[IUIUfQofRjt7ofj[j[_3%MRjWBj[M{WBRjt7IUM{xuRjofxuofofWBRjM{ayt7RjRjoffQof%MxuayRjt7ayj[Rjayj[M{j[j[WBoft7j[t7ayRjWBWBofWBWBayRj',
    'bg06':
        '|05}px9Ft7%MIUay-;4n-;~qoffQfQj[j[WBofWB_3offQayofj[WBt7WB~qofayayoffQayofWB_3t7ayayj[j[WBt7WB_3ofj[ayofj[WBofWB?bofj[ayofj[WBt7WB_3offQfQofj[WBofay_3ofayayofj[WBt7WB',
    'bg07':
        '|02=\$EofWBayayayRjayofofofWBofofj[ofj[fQWBj[fQj[ofofWBt7ofWBofofj[ofWBj[j[ofj[ayj[ofj[fQofofWBoffQWBfQfQj[j[ofayRjj[j[WBofofayj[oft7t7fQj[ayt7ofRjj[ayt7j[j[WBWBayayWB',
  };
}
