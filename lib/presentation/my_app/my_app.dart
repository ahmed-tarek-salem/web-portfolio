

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/presentation/modules/home/home_screen.dart';
import 'package:personal_portfolio/providers/theme_provider.dart';
import 'package:personal_portfolio/utils/theme/app_theme_data.dart';
import 'package:sizer/sizer.dart';

/// The entry point of the application.
///
/// This file defines the `MyApp` widget, which is the root widget of the application.
/// It sets up the theme, and wraps the `HomeScreen` widget with a `MaterialApp`.
///
/// MyApp widget extends [ConsumerWidget] which is the easiest way to give you a reference
/// for your riverpod providers.
///
/// For more info about [ConsumerWidget]
/// visit: https://pub.dev/documentation/flutter_riverpod/latest/flutter_riverpod/ConsumerWidget-class.html
class MyApp extends ConsumerWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Retrieves the primary and light primary colors from a [colorPaletteProvider]
    // using the reference provided by [ConsumerWidget]
    final primaryColor = ref.watch(colorPaletteProvider)[0];
    final lightPrimaryColor = ref.watch(colorPaletteProvider)[1];
    return Sizer(
      builder: ((context, orientation, deviceType) {
        final queryData =
            MediaQueryData.fromWindow(WidgetsBinding.instance.window);
        final width = queryData.size.width;
        return MaterialApp(
            title: 'Personal Portfolio',
            theme: getAppThemeData(primaryColor, lightPrimaryColor, width),
            home: const HomeScreen());
      }),
    );
  }
}
