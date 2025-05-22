// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteListModelImpl _$$SiteListModelImplFromJson(Map<String, dynamic> json) =>
    _$SiteListModelImpl(
      siteName: json['site_name'] as String,
      siteDomain: json['site_domian'] as String,
      siteType: json['site_type'] as String,
      areaCode: json['area_code'] as String,
      siteId: json['site_id'] as String,
      siteCode: json['site_code'] as String?,
    );

Map<String, dynamic> _$$SiteListModelImplToJson(_$SiteListModelImpl instance) =>
    <String, dynamic>{
      'site_name': instance.siteName,
      'site_domian': instance.siteDomain,
      'site_type': instance.siteType,
      'area_code': instance.areaCode,
      'site_id': instance.siteId,
      'site_code': instance.siteCode,
    };
