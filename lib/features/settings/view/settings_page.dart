import 'package:bottom_navigation/l10n/l10n.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.bottomNavigationSettingsLabel,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
