import 'package:realm/realm.dart';
import 'package:secretaria/src/shared/services/realm/models/config_model.dart';

LocalConfiguration realmConfig = Configuration.local(
  [
    ConfigModel.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(
      ConfigModel('system'),
    );
  },
);
