import 'package:flutter/material.dart';
import 'package:theming/theming.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.trailing,
    required this.onTap,
    this.borderColor,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Widget leading;
  final Widget? trailing;
  final void Function()? onTap;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final borderRadius = Theme.of(context).borderRadius.all.m;
    return Container(
      decoration: borderColor != null
          ? BoxDecoration(
              borderRadius: borderRadius,
              border: Border.all(color: borderColor!),
            )
          : null,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Material(
          // Material required to enable Splash effect
          child: ListTile(
            leading: leading,
            title: Text(title),
            subtitle: subtitle != null ? Text(subtitle!) : null,
            onTap: onTap,
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
