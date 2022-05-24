import 'package:drift/web.dart';
import 'package:moor/moor_web.dart';

import '../drift_database.dart';

Future<DriftDatabaseImpl> constructDb({bool logStatements = false, bool test = false}) async {
  return DriftDatabaseImpl(WebDatabase.withStorage(await DriftWebStorage.indexedDbIfSupported('db')));

  // return Database(WebDatabase('db', logStatements: logStatements));
}
