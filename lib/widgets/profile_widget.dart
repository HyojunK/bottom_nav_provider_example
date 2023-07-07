import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        width: 250.0,
        height: 250.0,
        child: const Center(
            child: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
