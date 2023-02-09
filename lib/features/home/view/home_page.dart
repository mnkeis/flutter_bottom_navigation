import 'package:bottom_navigation/l10n/l10n.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.bottomNavigationHomeLabel,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
