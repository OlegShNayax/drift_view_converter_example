// don't import moor_web.dart or moor_flutter/moor_flutter.dart in shared code
import 'package:moma_core/database/drift/dao/drift_machine_dao.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';
import 'package:moma_core/database/drift/tables/drift_machine_info_table.dart';
import 'package:moma_core/database/drift/tables/drift_machine_table.dart';
import 'package:moma_core/database/drift/entities/drift_machine_entity.dart';
import 'package:moma_core/database/drift/type_converter/drift_details_converter.dart';
import 'package:moma_core/database/drift/type_converter/drift_main_converter.dart';
import 'package:moma_core/database/drift/views/drift_machine_view.dart';
import 'package:moor/moor.dart';
import 'package:drift/drift.dart';

export '../drift/databases/shared.dart';

part 'drift_database.g.dart';

@DriftDatabase(tables: [
  DriftMachineTable,
  DriftMachineInfoTable
],daos: [
  DriftMachineDao
], views: [
  DriftMachineView
])
class DriftDatabaseImpl extends _$DriftDatabaseImpl{
  DriftDatabaseImpl(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;


}