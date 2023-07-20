import 'package:flutter/material.dart';

class InicioStore {
  //
  final themeMode = ValueNotifier(ThemeMode.dark);
  final syncDate = ValueNotifier<DateTime?>(null);

  InicioStore();

  //
  void init() {
    //TODO: Salvar os dados na base local
  }

  //
  void save() {
    //TODO: Salvar os dados na base local
  }

  //
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  //
  void setSyncDate(DateTime date) {
    syncDate.value = date;
    save();
  }
}
