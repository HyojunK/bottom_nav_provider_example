import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        width: 250.0,
        height: 250.0,
        child: const Center(
            child: Text(
          'Home',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
