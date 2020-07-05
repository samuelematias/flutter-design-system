import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _iconColor = Colors.white;
  static final Color _accentColor = Colors.deepPurple;

  static const Color _lightWhite = Colors.white;
  static const Color _lightBlack = Colors.black87;
  static const Color _lightGreyText = Colors.grey;
  static const Color _lightOnPrimaryColor = Colors.black;
  static final Color _lightUnselectedIconColor = Colors.grey[500];

  static const Color _darkWhite = Colors.white;
  static const Color _darkBlack = Colors.black;
  static const Color _darkPrimaryVariantColor = Color(0xFF212121);
  static const Color _darkOnPrimaryColor = Colors.white;
  static final Color _darkBackgroundColor = Color(0xFF2F2F2F);
  static final Color _darkGrey100 = Color(0xFFB2B2B2);
  static final Color _darkGrey200 = Color(0xFF7E7E7E);
  static final Color _darkGrey300 = Color(0xFF303030);
  static final Color _darkGrey700 = Colors.grey[700];
  static final Color _darkGrey900 = Colors.grey[900];

  static final ThemeData lightTheme = ThemeData(
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: _lightWhite,
      selectedIconTheme: IconThemeData(color: _accentColor),
      unselectedIconTheme: IconThemeData(color: _lightUnselectedIconColor),
      selectedLabelTextStyle: TextStyle(color: _accentColor),
      unselectedLabelTextStyle: TextStyle(color: _lightBlack),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: _accentColor),
      selectedItemColor: _accentColor,
      unselectedIconTheme: IconThemeData(color: _lightUnselectedIconColor),
      unselectedItemColor: _lightBlack,
    ),
    appBarTheme: AppBarTheme(
      color: _accentColor,
      iconTheme: IconThemeData(color: _lightWhite),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: _darkBackgroundColor,
      selectedIconTheme: IconThemeData(color: _accentColor),
      unselectedIconTheme: IconThemeData(color: _darkGrey200),
      selectedLabelTextStyle: TextStyle(color: _accentColor),
      unselectedLabelTextStyle: TextStyle(color: _darkGrey100),
    ),
    bottomAppBarColor: _darkPrimaryVariantColor,
    primaryColorDark: _darkBlack,
    primaryColor: _darkGrey900,
    accentColor: _accentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _darkBackgroundColor,
      selectedIconTheme: IconThemeData(color: _accentColor),
      unselectedIconTheme: IconThemeData(color: _darkGrey700),
      selectedItemColor: _accentColor,
      unselectedItemColor: _darkGrey100,
    ),
    primaryIconTheme: const IconThemeData(color: _darkWhite),
    accentIconTheme: const IconThemeData(color: _darkWhite),
    scaffoldBackgroundColor: _darkGrey300,
    appBarTheme: AppBarTheme(
      color: _darkPrimaryVariantColor,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
    ),
    iconTheme: IconThemeData(color: _iconColor),
    textTheme: _darkTextTheme,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    caption: _darkScreenHeadingTextStyle,
    button: _darkScreenHeadingTextStyle,
    overline: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle,
    headline2: _darkScreenHeadingTextStyle,
    headline1: _darkScreenHeadingTextStyle,
    headline3: _darkScreenHeadingTextStyle,
    headline4: _darkScreenHeadingTextStyle,
    headline5: _darkScreenHeadingTextStyle,
    headline6: _darkScreenHeadingTextStyle,
    subtitle1: _darkScreenHeadingTextStyle,
    subtitle2: _darkScreenHeadingTextStyle,
  );

  static final TextStyle _lightScreenHeadingTextStyle =
      TextStyle(color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle =
      TextStyle(color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskDurationTextStyle =
      TextStyle(color: _lightGreyText);

  static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle.copyWith(color: _darkOnPrimaryColor);
}
