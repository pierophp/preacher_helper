// REMOVER QUANDO TODAS AS LIBS SUPORTAREM NULL SAFETY
// https://dart.dev/null-safety/unsound-null-safety
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:preacher_helper/widgets/app_initializer.dart';
import 'package:preacher_helper/widgets/custom_loading.dart';

import './routes.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  runApp(AppComponent());
}

class AppComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppInitializer(
      onLoading: (loadingContext) => CustomLoading(),
      onDidInitilize: (didInitContext) {
        return MaterialApp(
          title: 'PREACHER HELPER',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: router.generator,
          scaffoldMessengerKey: rootScaffoldMessengerKey,
        );
      },
    );
  }
}
