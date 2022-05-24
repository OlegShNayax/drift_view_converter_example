import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moma_core/database/drift/dao/drift_machine_dao.dart';
import 'package:moma_core/database/drift/drift_database.dart';
import 'package:moma_core/database/drift/entities/drift_machine_entity.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';


void main() async{
  TestWidgetsFlutterBinding.ensureInitialized();
  await machineDaoTests();
}

Future<void> machineDaoTests() async{
  group('Machine dao tests', () {
    late DriftMachineDao driftMachineDao;

    Future _insertMachine() async{
      final json = jsonDecode(await rootBundle.loadString('assets/jsons/machine.json'));
      final machine = DriftMachineEntity.fromJson(json);
      await driftMachineDao.insertMachine(machine);
    }

    Future _insertMachineInfo() async{
      final json = jsonDecode(await rootBundle.loadString('assets/jsons/machine_info.json'));
      final machineInfo = DriftMachineInfoEntity.fromJson(json);
      await driftMachineDao.insertMachineInfo(machineInfo);
    }

    setUpAll(() async {
      final databaseImpl = constructDb(test: true);
      driftMachineDao = databaseImpl.driftMachineDao;
      await _insertMachine();
      await _insertMachineInfo();
    });


    test('Check if machine model added correct to database', () async {
      final machine = await driftMachineDao.getMachine(98221);
      expect(machine, isNotNull);
      expect(machine?.id, 98221);
      expect(machine?.typeLutId, 30000620);
      expect(machine?.actorId, 2001491012);
      expect(machine?.name, "Aviv Yaari - Monyx Simulator");
    });


    test('Check if machineInfo model added correct to database', () async {
      final machineInfo = await driftMachineDao.getMachineInfo(98221);
      expect(machineInfo, isNotNull);
      expect(machineInfo?.main?.actorId, 2001491012);
      expect(machineInfo?.main?.dexTypeId, 123);
      expect(machineInfo?.details?.machineTypeId, 30000525);
      expect(machineInfo?.details?.currency, 2);
      expect(machineInfo?.details?.updatedDt, "2022-04-04T12:45:29.09");
    });


    test('Check if MachineViewData correct', () async {
      final machine = await driftMachineDao.getMachine(98221);
      expect(machine, isNotNull);

      final machineInfo = await driftMachineDao.getMachineInfo(98221);
      expect(machineInfo, isNotNull);

      final machineViewData = await driftMachineDao.getMachineViewData(98221);
      expect(machineViewData, isNotNull);

      print("Here");
      // expect(machineInfo, isNotNull);
      // expect(machineInfo?.main?.actorId, 2001491012);
      // expect(machineInfo?.main?.dexTypeId, 123);
      // expect(machineInfo?.details?.machineTypeId, 30000525);
      // expect(machineInfo?.details?.currency, 2);
      // expect(machineInfo?.details?.updatedDt, "2022-04-04T12:45:29.09");
    });
  });
}