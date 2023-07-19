import 'package:flutter/material.dart';

class InicioStore {
  final themeMode = ValueNotifier(ThemeMode.dark);
  //
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  //
  void save() {
    //TODO: Salvar os dados na base local
  }
}
