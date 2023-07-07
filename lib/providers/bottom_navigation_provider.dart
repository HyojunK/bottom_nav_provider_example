import 'package:bottom_nav_provider/providers/bottom_navigation_state.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier {
  BottomNavigationState _state = BottomNavigationState.initial();
  BottomNavigationState get state => _state;

  void update(int index) {
    _state = _state.copyWith(index: index);
    notifyListeners();
  }
}
