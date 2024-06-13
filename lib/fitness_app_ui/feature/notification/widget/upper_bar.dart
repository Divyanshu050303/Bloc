import 'package:flutter/material.dart';

class NotificationUpperBar extends StatelessWidget {
  final String? title;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool? isNotification;
  const NotificationUpperBar(
      {super.key,
      this.isNotification,
      this.leadingIcon,
      this.title,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: mediaQueryData.size.height * 0.09,
      width: mediaQueryData.size.width,
      child: ListTile(
        leading: isNotification ?? false
            ? Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.cyan.shade50.withOpacity(0.8),
                    shape: BoxShape.circle),
                child: Center(
                  child: Icon(leadingIcon),
                ),
              )
            : const SizedBox(),
        title: Padding(
          padding: isNotification ?? false
              ? EdgeInsets.only(left: mediaQueryData.size.width * 0.27)
              : EdgeInsets.symmetric(
                  horizontal: mediaQueryData.size.width * 0.17),
          child: const Text(
            "Notification",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        trailing: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.cyan.shade50.withOpacity(0.8),
              shape: BoxShape.circle),
          child: Center(
            child: Icon(trailingIcon),
          ),
        ),
      ),
    );
  }
}
