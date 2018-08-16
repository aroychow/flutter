import 'package:flutter/material.dart';
import 'supplemental/cut_corners_border.dart';

import 'colors.dart';
import 'home.dart';
import 'login.dart';

// TODO: Convert BasanApp to stateful widget (104)
class BasanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basan',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: HomePage(),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      // TODO: Add a theme (103)
      theme: _kBasanTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Basan Theme (103)
final ThemeData _kBasanTheme = _buildBasanTheme();

ThemeData _buildBasanTheme() {
  final ThemeData base = ThemeData.light();
  // final ThemeData base = ThemeData.dark();
  return base.copyWith(
    accentColor: kBasanBrown900,
    primaryColor: kBasanPink100,
    buttonColor: kBasanPink100,
    scaffoldBackgroundColor: kBasanBackgroundWhite,
    cardColor: kBasanBackgroundWhite,
    textSelectionColor: kBasanPink100,
    errorColor: kBasanErrorRed,
    // TODO: Add the text themes (103)
    textTheme: _buildBasanTextTheme(base.textTheme),
    primaryTextTheme: _buildBasanTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildBasanTextTheme(base.accentTextTheme),
    // TODO: Add the icon themes (103)
    primaryIconTheme: base.iconTheme.copyWith(color: kBasanBrown900),

    // accentColor: kBasanAltDarkGrey,
    // primaryColor: kBasanAltDarkGrey,
    // buttonColor: kBasanAltYellow,
    // scaffoldBackgroundColor: kBasanAltDarkGrey,
    // cardColor: kBasanAltDarkGrey,
    // textSelectionColor: kBasanPink100,
    // errorColor: kBasanErrorRed,
    // textTheme: _buildBasanTextTheme(base.textTheme),
    // primaryTextTheme: _buildBasanTextTheme(base.primaryTextTheme),
    // accentTextTheme: _buildBasanTextTheme(base.accentTextTheme),
    // primaryIconTheme: base.iconTheme.copyWith(color: kBasanAltYellow),
    // TODO: Decorate the inputs (103)
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(),
    ),
  );
}

// TODO: Build a Basan Text Theme (103)
TextTheme _buildBasanTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kBasanBrown900,
        bodyColor: kBasanBrown900,
      );
/*   return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
      fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kBasanSurfaceWhite,
    bodyColor: kBasanSurfaceWhite,
  ); */
}
