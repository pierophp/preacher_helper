import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:preacher_helper/screens/index_screen.dart';
import 'package:preacher_helper/widgets/custom_loading.dart';

class IndexController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: () async {}(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return CustomLoading();
        }

        return IndexScreen();
      },
    );
  }
}

var indexHandler = Handler(handlerFunc: (
  BuildContext context,
  Map<String, dynamic> params,
) {
  return IndexController();
});
