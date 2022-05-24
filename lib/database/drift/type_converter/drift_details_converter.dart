import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';


class DriftDetailsConverter extends TypeConverter<Details?, String> {
  const DriftDetailsConverter();

  @override
  Details? mapToDart(String? value) {
    try{
      return Details.fromJson(jsonDecode(value!));
    } catch(e){
      return null;
    }
  }

  @override
  String? mapToSql(Details? value) {
    try{
      return jsonEncode(value?.toJson());
    }catch(e){
      return null;
    }
  }
}
