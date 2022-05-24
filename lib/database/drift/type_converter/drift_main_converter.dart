import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:moma_core/models/machineinfo/machine_info.dart';


class DriftMainConverter extends TypeConverter<Main?, String> {
  const DriftMainConverter();

  @override
  Main? mapToDart(String? value)  {
    try{
      return Main.fromJson(jsonDecode(value!));
    } catch(e){
      return null;
    }
  }

  @override
  String? mapToSql(Main? value)  {
    try{
      return jsonEncode(value?.toJson());
    }catch(e){
      return null;
    }
  }
}
