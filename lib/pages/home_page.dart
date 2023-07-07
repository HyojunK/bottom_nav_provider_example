import 'package:bottom_nav_provider/providers/bottom_navigation_provider.dart';
import 'package:bottom_nav_provider/widgets/home_widget.dart';
import 'package:bottom_nav_provider/widgets/profile_widget.dart';
import 'package:bottom_nav_provider/widgets/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _widgetList = <Widget>[
    const HomeWidget(),
    const ProfileWidget(),
    const SettingsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
            _widgetList[context.watch<BottomNavigationProvider>().state.index],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: context.watch<BottomNavigationProvider>().state.index,
          onTap: (value) =>
              context.read<BottomNavigationProvider>().update(value),
        ),
      ),
    );
  }
}
