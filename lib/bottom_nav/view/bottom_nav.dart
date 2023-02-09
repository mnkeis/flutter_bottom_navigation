import 'package:bottom_navigation/app/bloc/auth_bloc/auth_bloc.dart';
import 'package:bottom_navigation/features/features.dart';
import 'package:bottom_navigation/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  static Page<void> page() => const MaterialPage<void>(child: BottomNav());

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late final List<BottomNavigationBarItem> _items;
  final List<Widget> _pages = [
    const HomePage(),
    const SettingsPage(),
  ];
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: context.l10n.bottomNavigationHomeLabel,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings),
        label: context.l10n.bottomNavigationSettingsLabel,
      ),
    ];
  }

  void _bottomNavigationTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => context
                .read<AuthBloc>()
                .add(const AuthStatusChanged(AuthStatus.unauthenticated)),
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _selectedIndex,
        onTap: _bottomNavigationTap,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
