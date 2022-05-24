import 'dart:io';

import 'package:drift/native.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider_windows/path_provider_windows.dart';
import 'package:sqflite/sqflite.dart' as sqlite;

import '../drift_database.dart';


DriftDatabaseImpl constructDb({bool logStatements = false, bool test = false}) {
  if(test) {
    print('drift test. Create database in memory');
    return DriftDatabaseImpl(VmDatabase.memory(logStatements: logStatements));
  }
  if (Platform.isIOS || Platform.isAndroid) {
    final executor = LazyDatabase(() async {
      final dataDir = await sqlite.getDatabasesPath();
      // final dbFile = File(p.join(dataDir.path, 'db.sqlite'));
      final dbFile = File(p.join(dataDir, "drift_moma_core.db"));
      // final dbFile = File(p.join(dataDir, 'drift_moma_core.db'));
      if(dbFile.existsSync()) {
        print("using moma_core.db");
      } else {
        print("create moma_core.db ${dbFile.path}");
      }
      return VmDatabase(dbFile, logStatements: logStatements);
    });
    return DriftDatabaseImpl(executor);
  }
  if (Platform.isMacOS || Platform.isLinux) {
    final file = File('db.sqlite');
    return DriftDatabaseImpl(VmDatabase(file, logStatements: logStatements));
  }
  if (Platform.isWindows) {
    print("create db for windows using pathProviderWindows");
    final executor = LazyDatabase(() async {

      var dbFolderPath = '';
      final provider = PathProviderWindows();
      dbFolderPath = (await provider.getApplicationSupportPath())!;

      final file = File(p.join(dbFolderPath, 'db.sqlite'));
      return NativeDatabase(file);

    });
    return DriftDatabaseImpl(executor);
  }
  return DriftDatabaseImpl(VmDatabase.memory(logStatements: logStatements));
}
