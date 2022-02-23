import 'package:flutter/material.dart';
import 'package:theming/src/themes/theme_config.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    Key? key,
    this.title,
    required this.child,
    this.topPadding = 0,
    this.additionalBottomPadding = 10,
  }) : super(key: key);

  final double topPadding;
  final double additionalBottomPadding;
  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Theme.of(context).duration.medium,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).bottomSheetTheme.backgroundColor,
          borderRadius: Theme.of(context).borderRadius.top.xl,
          boxShadow: const [
            BoxShadow(blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: topPadding,
            bottom: Theme.of(context).bottomOffset,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 8),
                    const Divider(),
                  ],
                ),
              const SizedBox(width: 0),
              child,
              SizedBox(height: additionalBottomPadding),
            ],
          ),
        ),
      ),
    );
  }
}
