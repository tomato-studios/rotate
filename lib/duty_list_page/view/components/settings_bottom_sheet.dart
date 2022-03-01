import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rotate/core/settings/settings_cubit.dart';
import 'package:rotate/core/theme/theme_cubit.dart';
import 'package:theming/theming.dart';

class SettingsModal extends StatelessWidget {
  const SettingsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: Column(
        children: [
          Padding(
            padding: Theme.of(context).padding.all.s +
                Theme.of(context).padding.top.s,
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const Divider(),
          AppListTile(
            title: 'Theme',
            leading: const Icon(Icons.format_paint_outlined),
            onTap: () => ThemeCubit.of(context).nextThemeMode(),
            trailing: Wrap(
              children: const [
                ThemeModeButton(mode: ThemeMode.dark),
                ThemeModeButton(mode: ThemeMode.light),
                ThemeModeButton(mode: ThemeMode.system),
              ],
            ),
          ),
          _SwitchListTile(
            title: 'Show Performance Overlay',
            icon: const Icon(Icons.speed_rounded),
            onTap: () =>
                SettingsCubit.of(context).showPerformanceOverlay.toggle(),
            value: SettingsState.watch(context).showPerformanceOverlay,
          ),
        ],
      ),
    );
  }
}

class _SwitchListTile extends StatelessWidget {
  const _SwitchListTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.onTap,
    required this.value,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Icon icon;
  final void Function() onTap;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      title: title,
      subtitle: subtitle,
      leading: icon,
      trailing: Switch(
        value: value,
        onChanged: (_) => onTap(),
      ),
      onTap: onTap,
    );
  }
}

class ThemeModeButton extends StatelessWidget {
  const ThemeModeButton({Key? key, required this.mode}) : super(key: key);
  final ThemeMode mode;
  @override
  Widget build(BuildContext context) {
    final label = mode.toString().split('.').last;
    final activeColor = Theme.of(context).colorScheme.secondary;
    final activeTextColor = Theme.of(context).colorScheme.onSecondary;

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return TextButton(
          onPressed: () => ThemeCubit.of(context).setThemeMode(mode),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Theme.of(context).dividerColor),
            minimumSize: Size.zero,
            backgroundColor: state.mode == mode ? activeColor : null,
          ),
          child: Text(
            label,
            style: state.mode == mode
                ? Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: activeTextColor)
                : null,
          ),
        );
      },
    );
  }
}
