import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'machine_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MachineInfo {
  Main? main;
  Details? details;

  MachineInfo({this.main, this.details});

  factory MachineInfo.fromJson(Map<String, dynamic> json) => _$MachineInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MachineInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Main {
  num? id;
  num? typeLutId;
  num? dexTypeId;
  num? actorId;
  int? operatorActorId;
  num? modelId;
  num? profileLutId;
  String? name;
  String? number;
  String? serialNumber;
  num? smartStickerId;
  num? monyxMachineId;
  num? deviceId;
  String? deviceSerialNumber;
  num? vposId;
  String? vposSerialNumber;
  num? groupId;
  num? locationType;
  num? subLocationType;
  num? institute;
  num? locationId;
  num? customerLocationId;
  String? customerLocation;
  num? country;
  num? region;
  num? city;
  String? zipCode;
  num? timeZone;
  num? geoLongitude;
  num? geoLatitude;
  String? geoAddress;
  num? geoCountry;
  String? geoState;
  String? geoCity;
  String? geoZipCode;
  num? statusId;
  String? remarks;
  num? sectorId;
  @JsonKey(fromJson: _fromJson)
  List<String>? labels;

  Main(
      {this.id,
      this.typeLutId,
      this.dexTypeId,
      this.actorId,
      this.operatorActorId,
      this.modelId,
      this.profileLutId,
      this.name,
      this.number,
      this.serialNumber,
      this.smartStickerId,
      this.monyxMachineId,
      this.deviceId,
      this.deviceSerialNumber,
      this.vposId,
      this.vposSerialNumber,
      this.groupId,
      this.locationType,
      this.subLocationType,
      this.institute,
      this.locationId,
      this.customerLocationId,
      this.customerLocation,
      this.country,
      this.region,
      this.city,
      this.zipCode,
      this.geoLongitude,
      this.geoLatitude,
      this.geoAddress,
      this.geoCountry,
      this.geoState,
      this.geoCity,
      this.geoZipCode,
      this.statusId,
      this.remarks,
      this.sectorId,
      this.labels});

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);

  static List<String>? _fromJson(dynamic json) {
    try {
      final List<String>? list = json?.map<String>((e) => e.toString()).toList();
      return list;
    } catch (e) {
      return [];
    }
  }
}

@JsonSerializable(explicitToJson: true)
class Details extends Equatable {

  List<MachinePictures>? machinePictures;
  num? customerId;
  num? machineTypeId;
  num? currency;
  bool? enableAutoVoid;
  bool? getNightDexReads;
  String? installReport;
  bool? isCashEquaVaMinusDa;
  num? languageId;
  bool? isCheckG85;
  num? divideBillsDexValueBy;
  bool? isG85CancelParsing;
  bool? isUseCCprice;
  num? salesSourceLutId;
  num? alertRulesetId;
  bool? isMachineAlertsOverridePar;
  num? machineAlertsOverridenPar;
  bool? isMachineAlertsEnabled;
  bool? isMachineProductMember;
  bool? isLeadingProductGroupOverridePar;
  num? leadingProductGroupOneOverridePar;
  num? leadingProductGroupTwoOverridePar;
  num? multiplyCoinsDexValueBy;
  num? multiplyTubesDexValueBy;
  num? timeZoneOffset;
  num? readDexPeriodLutId;
  bool? typeselectionApplyMdb;
  num? typeSelectionId;
  String? updatedDt;
  num? intlDialCode;
  bool? logMissingCrc;
  bool? isExtractLA;
  num? productMapId;
  bool? isMapModified;
  bool? ignoreStatusCash;
  bool? ignoreStatusCashless;
  bool? ignoreStatusCli;
  bool? ignoreStatusDex;
  bool? ignoreStatusV2v;
  bool? ignoreStatusVisit;
  bool? ignoreStatusCashbox;
  bool? ignoreStatusRssi;
  bool? ignoreStatusData;
  bool? ignoreStatusFW;
  bool? ignoreCoinTubesSum;
  bool? ignoreCoinTubesCa15Sum;
  bool? isRemoteVend;
  num? longitude;
  num? latitude;
  num? commissionType;
  num? commissionDefaultValue;
  num? createdBy;
  String? createdDt;
  num? updatedBy;
  num? tubesSourceLutCode;
  num? billsSourceLutCode;
  num? useLocationFrom;
  String? geoLocation;
  String? geoAddressStreetNumber;
  num? geoZoom;
  String? geoSource;
  String? geoUpdatedDt;
  String? remarksUpdated;
  num? picklistPriceSourceLutId;
  num? timeZoneKey;
  num? monyxPictureId;


  Details(
      {this.machinePictures,
      this.customerId,
      this.machineTypeId,
      this.currency,
      this.enableAutoVoid,
      this.getNightDexReads,
      this.installReport,
      this.isCashEquaVaMinusDa,
      this.languageId,
      this.isCheckG85,
      this.divideBillsDexValueBy,
      this.isG85CancelParsing,
      this.isUseCCprice,
      this.salesSourceLutId,
      this.alertRulesetId,
      this.isMachineAlertsOverridePar,
      this.machineAlertsOverridenPar,
      this.isMachineAlertsEnabled,
      this.isMachineProductMember,
      this.isLeadingProductGroupOverridePar,
      this.leadingProductGroupOneOverridePar,
      this.leadingProductGroupTwoOverridePar,
      this.multiplyCoinsDexValueBy,
      this.multiplyTubesDexValueBy,
      this.timeZoneOffset,
      this.readDexPeriodLutId,
      this.typeselectionApplyMdb,
      this.typeSelectionId,
      this.updatedDt,
      this.intlDialCode,
      this.logMissingCrc,
      this.isExtractLA,
      this.productMapId,
      this.isMapModified,
      this.ignoreStatusCash,
      this.ignoreStatusCashless,
      this.ignoreStatusCli,
      this.ignoreStatusDex,
      this.ignoreStatusV2v,
      this.ignoreStatusVisit,
      this.ignoreStatusCashbox,
      this.ignoreStatusRssi,
      this.ignoreStatusData,
      this.ignoreStatusFW,
      this.ignoreCoinTubesSum,
      this.ignoreCoinTubesCa15Sum,
      this.isRemoteVend,
      this.longitude,
      this.latitude,
      this.commissionType,
      this.commissionDefaultValue,
      this.createdBy,
      this.createdDt,
      this.updatedBy,
      this.tubesSourceLutCode,
      this.billsSourceLutCode,
      this.useLocationFrom,
      this.geoLocation,
      this.geoAddressStreetNumber,
      this.geoZoom,
      this.geoSource,
      this.geoUpdatedDt,
      this.remarksUpdated,
      this.picklistPriceSourceLutId,
      this.timeZoneKey,
      this.monyxPictureId});

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);

  @override
  List<Object?> get props => [
        machinePictures,
        customerId,
        machineTypeId,
        currency,
        enableAutoVoid,
        getNightDexReads,
        installReport,
        isCashEquaVaMinusDa,
        languageId,
        isCheckG85,
        divideBillsDexValueBy,
        isG85CancelParsing,
        isUseCCprice,
        salesSourceLutId,
        alertRulesetId,
        isMachineAlertsOverridePar,
        machineAlertsOverridenPar,
        isMachineAlertsEnabled,
        isMachineProductMember,
        isLeadingProductGroupOverridePar,
        leadingProductGroupOneOverridePar,
        leadingProductGroupTwoOverridePar,
        multiplyCoinsDexValueBy,
        multiplyTubesDexValueBy,
        timeZoneOffset,
        readDexPeriodLutId,
        typeselectionApplyMdb,
        typeSelectionId,
        updatedDt,
        intlDialCode,
        logMissingCrc,
        isExtractLA,
        productMapId,
        isMapModified,
        ignoreStatusCash,
        ignoreStatusCashless,
        ignoreStatusCli,
        ignoreStatusDex,
        ignoreStatusV2v,
        ignoreStatusVisit,
        ignoreStatusCashbox,
        ignoreStatusRssi,
        ignoreStatusData,
        ignoreStatusFW,
        ignoreCoinTubesSum,
        ignoreCoinTubesCa15Sum,
        isRemoteVend,
        longitude,
        latitude,
        commissionType,
        commissionDefaultValue,
        createdBy,
        createdDt,
        updatedBy,
        tubesSourceLutCode,
        billsSourceLutCode,
        useLocationFrom,
        geoLocation,
        geoAddressStreetNumber,
        geoZoom,
        geoSource,
        geoUpdatedDt,
        remarksUpdated,
        picklistPriceSourceLutId,
        timeZoneKey,
        monyxPictureId
      ];
}

@JsonSerializable(explicitToJson: true)
class MachinePictures extends Equatable {

  num? pictureId;
  String? pictureUrl;
  String? createdDt;
  num? pictureCreatedBy;
  num? statusId;
  bool? isMonyx;

  MachinePictures(
      {this.pictureId,
      this.pictureUrl,
      this.createdDt,
      this.pictureCreatedBy,
      this.statusId,
      this.isMonyx});

  factory MachinePictures.fromJson(Map<String, dynamic> json) =>
      _$MachinePicturesFromJson(json);

  Map<String, dynamic> toJson() => _$MachinePicturesToJson(this);

  @override
  List<Object?> get props => [
    pictureId,
    pictureUrl,
    createdDt,
    pictureCreatedBy,
    isMonyx
  ];
}
