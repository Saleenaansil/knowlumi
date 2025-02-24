import 'package:flutter/material.dart';

import '../customwidget/customText.dart';

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Downloaded Content",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
