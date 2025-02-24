import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

AppBar buildAppBar(
  context, {
  required String title,
  bool showBackButton = true,
  bool showNotification = true,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Visibility(
        visible: showNotification,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: NotificationWidget(),
        ),
      )
    ],
    title: Text(
      title,
      style: TextStyles.bold19,
      textAlign: TextAlign.center,
    ),
    centerTitle: true,
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context!);
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
    ),
  );
}
