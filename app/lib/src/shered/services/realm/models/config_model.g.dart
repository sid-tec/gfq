// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ConfigModel extends _ConfigModel
    with RealmEntity, RealmObjectBase, RealmObject {
  ConfigModel(
    String themeModeName, {
    DateTime? syncDate,
  }) {
    RealmObjectBase.set(this, 'syncDate', syncDate);
    RealmObjectBase.set(this, 'themeModeName', themeModeName);
  }

  ConfigModel._();

  @override
  DateTime? get syncDate =>
      RealmObjectBase.get<DateTime>(this, 'syncDate') as DateTime?;
  @override
  set syncDate(DateTime? value) => RealmObjectBase.set(this, 'syncDate', value);

  @override
  String get themeModeName =>
      RealmObjectBase.get<String>(this, 'themeModeName') as String;
  @override
  set themeModeName(String value) =>
      RealmObjectBase.set(this, 'themeModeName', value);

  @override
  Stream<RealmObjectChanges<ConfigModel>> get changes =>
      RealmObjectBase.getChanges<ConfigModel>(this);

  @override
  ConfigModel freeze() => RealmObjectBase.freezeObject<ConfigModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ConfigModel._);
    return const SchemaObject(
        ObjectType.realmObject, ConfigModel, 'ConfigModel', [
      SchemaProperty('syncDate', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('themeModeName', RealmPropertyType.string),
    ]);
  }
}
