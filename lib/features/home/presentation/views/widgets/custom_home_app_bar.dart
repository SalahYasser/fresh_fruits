import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_user.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(Assets.assetsImagesProfilePicture),
      ),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: Color(0xFF949D9E),
        ),
      ),
      subtitle: Text(
        // getUser()?.name ?? 'Guest',
        getUser().name,
        textAlign: TextAlign.right,
        style: TextStyles.bold16.copyWith(
          color: Color(0xFF0C0D0D),
        ),
      ),
      trailing: NotificationWidget(),
    );
  }
}
