import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/site_model.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/service/secure_storage.dart';
import 'package:safe_guard/src/view/building/building_view_model.dart';
import 'package:safe_guard/src/view/home/home_view_state.dart';
import 'package:safe_guard/src/view/home/widget/contact_dialog.dart';
import 'package:safe_guard/src/view/home/widget/exit_dialog.dart';
import 'package:safe_guard/util/route_path.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return HomeState(
      isBusy: false,
      appVersion: '1.0.0',
      buildingList: const [],
      buildingStatusList: const [],
      contactList: const [],
      siteModel: SiteModel(siteName: '테스트', siteDomain: '', siteId: '', mapImage: ''),
      storage: ref.watch(secureStorageProvider),
    );
  }

  /// 앱 버전 불러오기
  Future<void> packageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    state = state.copyWith(appVersion: info.version);
  }

  /// 알림 권한 요청
  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  /// 사이트 & 빌딩 정보 불러오기
  Future<void> getSiteInfo() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getSiteInfoProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      isBusy: false,
      siteModel: result[0],
    );
  }

  /// 빌딩 & 빌딩 상태 정보 불러오기
  Future<void> getBuildingAndBuildingStatusList() async {
    final result = await Future.wait([
      ref.read(getBuildingListProvider.future),
      ref.read(getBuildingStatusListProvider.future),
      ref.read(buildingViewModelProvider.notifier).getAlarmHistoryList(),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      buildingList: result[0],
      buildingStatusList: result[1],
    );
  }

  /// 유관 기관 정보 요청
  void getContactList() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getContactListProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false, contactList: result[0]);
  }

  /// 유관 기관 팝업 창
  void contactListPopup(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => ContactDialog(
        contactList: state.contactList,
        makeCall: (phoneNumber) => makePhoneCall(phoneNumber),
      ),
    );
  }

  /// 유관 기관 전화 연결
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
  }

  /// 앱 종료 팝업
  Future<void> showExitDialog(BuildContext context) async {
    final shouldExit = await showDialog(
      context: context,
      builder: (context) => const ExitDialog(),
    );
    if (shouldExit == true) {
      SystemNavigator.pop();
    }
  }

  /// 로그아웃
  void logout(context) async {
    final storage = ref.read(secureStorageProvider);
    await storage.delete(key: 'siteUrl');
    await storage.delete(key: 'userId');
    await storage.delete(key: 'password');

    Navigator.pushNamed(context, RoutePath.login);
  }
}
