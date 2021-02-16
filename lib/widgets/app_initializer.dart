import 'package:firebase_core/firebase_core.dart';
import 'package:preacher_helper/routes.dart';
import 'package:flutter/material.dart';

class AppInitializer extends StatefulWidget {
  final Widget Function(BuildContext) onDidInitilize;
  final Widget Function(BuildContext)? onLoading;
  final Widget Function(BuildContext, Object?)? onError;

  const AppInitializer({
    Key? key,
    required this.onDidInitilize,
    this.onLoading,
    this.onError,
  }) : super(key: key);

  @override
  _AppInitializerState createState() => _AppInitializerState();
}

class _AppInitializerState extends State<AppInitializer> {
  Future<void>? initialization;

  @override
  void initState() {
    super.initState();
    initialization = () async {
      defineRoutes();

      await Future.wait([
        Firebase.initializeApp(),
      ]);
    }();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return (widget.onError != null)
              ? widget.onError!(context, snapshot.error)
              : SizedBox.shrink();
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return widget.onDidInitilize(context);
        }
        return (widget.onLoading != null)
            ? widget.onLoading!(context)
            : SizedBox.shrink();
      },
    );
  }
}
