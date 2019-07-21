import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


typedef ThemeDataWithBrightnessBuilder = ThemeData Function(bool isLight);
typedef CustomColorBuilder = CustomColor Function(bool isLight);

const kTheme = "Theme";

class DynamicTheme extends InheritedWidget {

  final ThemeDataWithBrightnessBuilder data;

  final CustomColorBuilder customColorBuilder;

  final SharedPreferences prefs;

  final ValueNotifier<bool> lightTheme =  ValueNotifier(true);

  ThemeData themeData;

  Brightness brightness;

  CustomColor customColor;

  DynamicTheme({Key key,
    @required Widget child,
    @required this.data,
    @required this.customColorBuilder,
    @required this.prefs}) : super(key: key, child: child) {
    bool isLightTheme = prefs.get(kTheme);
    if (isLightTheme == null) {
      isLightTheme = true;
    }
    lightTheme.value = isLightTheme;
    themeData = data(isLightTheme);
    customColor = customColorBuilder(isLightTheme);
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light);
  }

  void changeTheme() {
    prefs.setBool(kTheme, !lightTheme.value);
    themeData = data(!lightTheme.value);
    customColor = customColorBuilder(!lightTheme.value);
    lightTheme.value = !lightTheme.value;
  }

  @override
  bool updateShouldNotify(DynamicTheme oldWidget) {
    return oldWidget.lightTheme != lightTheme;
  }

  static DynamicTheme of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(DynamicTheme) as DynamicTheme;
  }

}


class CustomColor {
  final Color onBottomAppBarColor;
  final Color onBottomAppBarColorDisable;

  CustomColor({this.onBottomAppBarColor, this.onBottomAppBarColorDisable});
}

