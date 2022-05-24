import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';
import 'package:moma_core/database/drift/dao/drift_machine_dao.dart';
import 'package:moma_core/database/drift/drift_database.dart';
import 'package:moma_core/models/machine/machine.dart';
import 'package:moma_core/models/machineinfo/machine_info.dart';



void main() async{
  TestWidgetsFlutterBinding.ensureInitialized();
  await machineDaoTests();
}

Future<void> machineDaoTests() async{
  group('Machine dao tests', () {
    late DriftMachineDao driftMachineDao;

    Future _insertMachines() async{
      final json = jsonDecode(await rootBundle.loadString('assets/jsons/machines.json'));
      final machines = (json as List<dynamic>).map((e) => Machine.fromJson(e)).toList();
      await driftMachineDao.insertMachines(machines);
    }

    Future _insertMachineInfo() async{
      final json = jsonDecode(await rootBundle.loadString('assets/jsons/machine_info.json'));
      final machineInfo = MachineInfo.fromJson(json);
      await driftMachineDao.insertMachineInfo(machineInfo);
    }

    setUpAll(() async {
      final databaseImpl = constructDb(test: true);
      driftMachineDao = databaseImpl.driftMachineDao;
      await _insertMachines();
      await _insertMachineInfo();
    });

    test('getAllMachineViews test', () async {
      final machineInfo = await driftMachineDao.getMachineInfo(98221);
      expect(machineInfo, isNotNull);

      final machineViewsData = await driftMachineDao.getAllMachineViews();
      expect(machineViewsData, isNotEmpty);
      expect(machineViewsData.length, 32);

      final machineViewData = machineViewsData.firstWhereOrNull((e) => e.id == 98221);
      expect(machineViewData, isNotNull);
      expect(machineViewData?.id, 98221);
      expect(machineViewData?.typeLutId, 30000620);
      expect(machineViewData?.actorId, 2001491012);
      expect(machineViewData?.name, "Aviv Yaari - Monyx Simulator");
      expect(machineViewData?.main?.dexTypeId, 123);
      expect(machineViewData?.details?.updatedDt, "2022-04-04T12:45:29.09");
      expect(machineViewData?.details?.updatedBy, 619360186);
      expect(machineViewData?.details?.intlDialCode, 972);
      expect(machineViewData?.details?.currency, 2);
    });
  });
}