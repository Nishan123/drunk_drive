import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

Widget driverInfoCard({
  required String name,
  required String phoneNo,
  required VoidCallback onCallTap,
  required VoidCallback onMsgTap,
}) {
  return ListTileTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 0),
    minVerticalPadding: 0,
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      leading: CircleAvatar(
        backgroundColor: AppColors.secondaryColor,
        radius: 32,
      ),
      title: Text(name, style: AppTextStyles.normal.copyWith(fontWeight: FontWeight.bold)),
      subtitle: Text(phoneNo),
      trailing: SizedBox(
        width: 120,
        child: Row(
          spacing: 8,
          children: [
            ContactDriver(onTap: onMsgTap, icon: FeatherIcons.messageSquare),
            ContactDriver(onTap: onCallTap, icon: FeatherIcons.phone),
          ],
        ),
      ),
    ),
  );
}

class ContactDriver extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const ContactDriver({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryColor, width: 2),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: AppColors.primaryColor),
      ),
    );
  }
}
