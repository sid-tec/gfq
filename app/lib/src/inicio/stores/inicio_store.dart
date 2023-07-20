import 'package:flutter/material.dart';

import '../services/config_service.dart';

class InicioStore {
  //
  final themeMode = ValueNotifier(ThemeMode.dark);
  final syncDate = ValueNotifier<DateTime?>(null);

  InicioStore(this._configurationService) {
    init();
  }

  final ConfigServiceInterface _configurationService;

  //
  void init() {
    final model = _configurationService.getConfig();
    syncDate.value = model.syncDate;
    themeMode.value = _getThemeModeByName(model.themeModeName);
  }

  //
  void save() {
    _configurationService.saveConfig(
      themeMode.value.name,
      syncDate.value,
    );
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

  void deleteApp() {
    _configurationService.deleteAll();
  }

  ThemeMode _getThemeModeByName(String name) =>
      ThemeMode.values.firstWhere((mode) => mode.name == name);
}
