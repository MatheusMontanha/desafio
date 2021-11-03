import 'package:flutter/material.dart';
import 'package:technical_case/modules/router/routes.dart';
import 'package:technical_case/modules/widgets/splash_screen.dart';
import 'package:technical_case/modules/router/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenWidget(),
      onGenerateRoute: router.generateRoute,
      initialRoute: splashScreenRoute,
    );
  }
}
