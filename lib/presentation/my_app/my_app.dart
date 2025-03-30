import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/modules/home/home_screen.dart';
import 'package:personal_portfolio/view_models/theme_view_model.dart';
import 'package:personal_portfolio/utils/theme/app_theme_data.dart';
import 'package:sizer/sizer.dart';

/// The entry point of the application.
///
/// This file defines the `MyApp` widget, which is the root widget of the application.
/// It sets up the theme, and wraps the `HomeScreen` widget with a `MaterialApp`.

class MyApp extends StatelessWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        final queryData =
            MediaQueryData.fromView(PlatformDispatcher.instance.views.first);
        final width = queryData.size.width;
        return ValueListenableBuilder(
            valueListenable: ThemeViewModel().colorPalette,
            builder: (context, colors, child) {
              // Retrieves the primary and light primary colors from a [ThemeViewModel]
              final primaryColor = colors[0];
              final lightPrimaryColor = colors[1];
              return MaterialApp(
                  title: 'Personal Portfolio',
                  theme:
                      getAppThemeData(primaryColor, lightPrimaryColor, width),
                  home: const HomeScreen());
            });
      }),
    );
  }
}
