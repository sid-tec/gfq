import 'package:realm/realm.dart';

part 'config_model.g.dart';

@RealmModel()
class _ConfigModel {
  late DateTime? syncDate;
  late String themeModeName;
}
