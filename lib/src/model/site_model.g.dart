// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteModelImpl _$$SiteModelImplFromJson(Map<String, dynamic> json) =>
    _$SiteModelImpl(
      siteName: json['site_name'] as String,
      siteDomain: json['site_domain'] as String,
      siteId: json['site_id'] as String,
      mapImage: json['map_image'] as String,
    );

Map<String, dynamic> _$$SiteModelImplToJson(_$SiteModelImpl instance) =>
    <String, dynamic>{
      'site_name': instance.siteName,
      'site_domain': instance.siteDomain,
      'site_id': instance.siteId,
      'map_image': instance.mapImage,
    };
