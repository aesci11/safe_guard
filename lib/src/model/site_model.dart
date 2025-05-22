import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_model.freezed.dart';
part 'site_model.g.dart';

@freezed
class SiteModel with _$SiteModel {
  factory SiteModel({
    @JsonKey(name: 'site_name') required String siteName,
    @JsonKey(name: 'site_domain') required String siteDomain,
    @JsonKey(name: 'site_id') required String siteId,
    @JsonKey(name: 'map_image') required String mapImage,
  }) = _SiteModel;

  factory SiteModel.fromJson(Map<String, dynamic> json) => _$SiteModelFromJson(json);
}
