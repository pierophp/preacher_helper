import 'package:flutter/material.dart';
import 'package:preacher_helper/widgets/custom_appbar.dart';
import 'package:preacher_helper/widgets/custom_typography.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({
    Key? key,
  }) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  Widget _buildBody(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(40),
            child: CustomTypography(
              text: "Sem Playlist",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: CustomAppBar(
        title: 'PREACHER HELPER',
        withLogo: false,
      ),
      body: ListView(
        children: [
          this._buildBody(context),
          Container(
            padding: EdgeInsets.fromLTRB(32, 16, 24, 16),
            child: Column(children: [
              SizedBox(height: 16),
            ]),
          ),
        ],
      ),
    );
  }
}
