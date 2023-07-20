import 'package:realm/realm.dart';

import '../../shared/services/realm/models/config_model.dart';

abstract class ConfigServiceInterface {
  ConfigModel getConfig();
  void saveConfig(String themeModeName, DateTime? syncDate);
  void deleteAll();
}

class ConfigService implements ConfigServiceInterface {
  final Realm realm;

  ConfigService(this.realm);

  @override
  ConfigModel getConfig() {
    return realm.all<ConfigModel>().first;
  }

  @override
  void saveConfig(String themeModeName, DateTime? syncDate) {
    final model = getConfig();
    realm.write(() {
      model
        ..themeModeName = themeModeName
        ..syncDate = syncDate;
    });
  }

  @override
  void deleteAll() {
    realm.deleteAll();
  }
}
