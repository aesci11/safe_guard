import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_list_model.freezed.dart';
part 'site_list_model.g.dart';

@freezed
class SiteListModel with _$SiteListModel {
  const factory SiteListModel({
    @JsonKey(name: 'site_name') required String siteName,
    @JsonKey(name: 'site_domian') required String siteDomain,
    @JsonKey(name: 'site_type') required String siteType,
    @JsonKey(name: 'area_code') required String areaCode,
    @JsonKey(name: 'site_id') required String siteId,
    @JsonKey(name: 'site_code') String? siteCode,
  }) = _SiteListModel;

  factory SiteListModel.fromJson(Map<String, dynamic> json) => _$SiteListModelFromJson(json);
}
