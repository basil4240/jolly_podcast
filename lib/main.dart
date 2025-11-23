import 'package:flutter/material.dart';
import 'package:jolly_podcast/app/app.bottomsheets.dart';
import 'package:jolly_podcast/app/app.dialogs.dart';
import 'package:jolly_podcast/app/app.locator.dart';
import 'package:jolly_podcast/app/app.router.dart';
import 'package:jolly_podcast/ui/common/app_dark_theme.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // For now i just used dark theme,
      // TODO: add proper light theme when available
      theme: appDarkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
