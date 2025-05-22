import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:safe_guard/src/model/building_model.dart';
import 'package:safe_guard/src/model/building_status_list.dart';
import 'package:safe_guard/src/model/contact_list.dart';
import 'package:safe_guard/src/model/site_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class HomeState extends BaseViewState {
  const HomeState({
    required this.isBusy,
    required this.siteModel,
    required this.buildingList,
    required this.buildingStatusList,
    required this.contactList,
    required this.storage,
  });
  @override
  final bool isBusy;
  final SiteModel siteModel;
  final List<BuildingModel> buildingList;
  final List<BuildingStatusList> buildingStatusList;
  final List<ContactList> contactList;
  final FlutterSecureStorage storage;

  HomeState copyWith({
    bool? isBusy,
    SiteModel? siteModel,
    List<BuildingModel>? buildingList,
    List<BuildingStatusList>? buildingStatusList,
    List<ContactList>? contactList,
    FlutterSecureStorage? storage,
  }) {
    return HomeState(
      isBusy: isBusy ?? this.isBusy,
      siteModel: siteModel ?? this.siteModel,
      buildingList: buildingList ?? this.buildingList,
      buildingStatusList: buildingStatusList ?? this.buildingStatusList,
      contactList: contactList ?? this.contactList,
      storage: storage ?? this.storage,
    );
  }
}
