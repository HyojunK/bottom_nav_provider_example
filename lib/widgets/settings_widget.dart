import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        width: 250.0,
        height: 250.0,
        child: const Center(
            child: Text(
          'Settings',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
