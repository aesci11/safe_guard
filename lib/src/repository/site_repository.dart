import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/building_model.dart';
import 'package:safe_guard/src/model/building_status_list.dart';
import 'package:safe_guard/src/model/camera_model.dart';
import 'package:safe_guard/src/model/contact_list.dart';
import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/model/panel_model.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/model/site_list_model.dart';
import 'package:safe_guard/src/model/site_model.dart';
import 'package:safe_guard/src/model/smoke_sensor_model.dart';
import 'package:safe_guard/src/model/system_model.dart';
import 'package:safe_guard/src/service/secure_storage.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';
import 'package:safe_guard/util/network_helper.dart';

part 'site_repository.g.dart';

/// 사이트 리스트 요청
@riverpod
Future<List<SiteListModel>> getSiteList(Ref ref) async {
  final res = await NetworkHelper.dio.get('http://twserver.mooo.com:8070/m/getSiteList');
  final result = res.data['siteList'];
  final json = result.map<SiteListModel>((json) => SiteListModel.fromJson(json)).toList();
  return json;
}

/// 사이트 정보 요청
@riverpod
Future<SiteModel> getSiteInfo(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final siteId = await storage.read(key: 'siteId');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getSiteInfo?site_id=$siteId');
  final result = res.data['siteInfo'];
  final json = SiteModel.fromJson(result);
  return json;
}

/// 빌딩 리스트 요청
@riverpod
Future<List<BuildingModel>> getBuildingList(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getBuildingList');
  final result = res.data['buildingList'];
  final json = result.map<BuildingModel>((json) {
    return BuildingModel.fromJson(json);
  }).toList();
  return json;
}

/// 빌딩 상태 리스트 요청
@riverpod
Future<List<BuildingStatusList>> getBuildingStatusList(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getBuildingStatusList');
  final result = res.data['buildingList'];
  final json = result.map<BuildingStatusList>((json) => BuildingStatusList.fromJson(json)).toList();
  return json;
}

/// 빌딩 경계 시작 & 해제
@riverpod
Future<void> updateBuildingSecurity(Ref ref, int securityCode, String buildingId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final userId = await storage.read(key: 'userId');
  final res = await NetworkHelper.dio
      .get('$siteUrl/m/updateBuildingSecurity?user_id=$userId&building_security=$securityCode&building_id=$buildingId');
  final result = res.statusCode;
}

/// 센서 리스트 요청
@riverpod
Future<List<SensorModel>> getSensorList(Ref ref, String buildingId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getSensorList?building_id=$buildingId');
  final result = res.data['sensorList'];
  final json = result.map<SensorModel>((json) {
    return SensorModel.fromJson(json);
  }).toList();
  return json;
}

/// 복합 센서 정보 요청
@riverpod
Future<SmokeSensorModel?> getSmokeSensorStatus(Ref ref, String sensorId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getSensorStatusInfo?sensor_id=$sensorId');
  if (res.data == '') {
    Toast.show('복합센서 정보를 불러올 수 없습니다.');
    return null;
  }
  final result = res.data;
  final json = SmokeSensorModel.fromJson(result);
  return json;
}

/// 분전반 정보 요청
@riverpod
Future<PanelModel?> getPanelStatusInfo(Ref ref, String sensorId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  try {
    final res = await NetworkHelper.dio
        .get('$siteUrl/m/getPanelStatusInfo?sensor_id=$sensorId')
        .timeout(const Duration(seconds: 8));
    if (res.statusCode == 200) {
      final result = res.data['panelStatus'];
      if (result != null) {
        final json = PanelModel.fromJson(result);
        return json;
      } else {
        Toast.show('분전반 정보를 불러올 수 없습니다.');
        return null;
      }
    } else {
      return null;
    }
  } on TimeoutException catch (_) {
    Toast.show('요청 시간 지연. 관리자에게 문의해 주세요.');
    return null;
  }
}

/// 분전반 리셋
@riverpod
Future<Map<String, dynamic>> panelReset(Ref ref, String sensorId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final userId = await storage.read(key: 'userId');
  final res = await NetworkHelper.dio.get('$siteUrl/m/apiSensorReset?user_id=$userId&sensor_id=$sensorId');
  final result = res.data;
  return result;
}

/// 알람 확인
@riverpod
Future<String?> alarmClear(Ref ref, String alarmId) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final userId = await storage.read(key: 'userId');
  try {
    final res = await NetworkHelper.dio
        .get('$siteUrl/m/updateAlarmInfoHistory?user_id=$userId&alarm_id=$alarmId')
        .timeout(const Duration(seconds: 10));
    if (res.statusCode == 200) {
      final result = res.data['result'];
      return result;
    } else {
      return null;
    }
  } on TimeoutException catch (_) {
    Toast.show('요청 시간 지연');
    return null;
  }
}

/// 카메라 정보 요청
@riverpod
Future<List<CameraModel>> getCameraPlayInfo(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getCameraPlayInfo');
  final result = res.data['cameraList'];
  final json = result.map<CameraModel>((json) => CameraModel.fromJson(json)).toList();
  return json;
}

/// 알람 이력 요청
@riverpod
Future<List<HistoryModel>> getAlarmHistoryList(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getAlarmHistoryList');
  final result = res.data['list'];
  final json = result.map<HistoryModel>((json) => HistoryModel.fromJson(json)).toList();
  return json;
}

/// 시스템 이력 요청
@riverpod
Future<List<SystemModel>> getSystemHistoryList(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getSystemHistoryList');
  final result = res.data['list'];
  final json = result.map<SystemModel>((json) => SystemModel.fromJson(json)).toList();
  return json;
}

/// 유관 기관 정보 요청
@riverpod
Future<List<ContactList>> getContactList(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final res = await NetworkHelper.dio.get('$siteUrl/m/getContactList');
  final result = res.data['contactList'];
  final json = result.map<ContactList>((json) => ContactList.fromJson(json)).toList();
  return json;
}

/// 로그인 요청
@riverpod
Future<Map<String, dynamic>> loginAction(Ref ref) async {
  final storage = ref.read(secureStorageProvider);
  final siteUrl = await storage.read(key: 'siteUrl');
  final userId = await storage.read(key: 'userId');
  final password = await storage.read(key: 'password');
  final mobileKey = await storage.read(key: 'mobileKey');
  try {
    final res = await NetworkHelper.dio
        .get('$siteUrl/m/loginAction?user_id=$userId&user_pw=$password&mobile_key=$mobileKey')
        .timeout(const Duration(seconds: 8));
    if (res.statusCode == 200) {
      final result = res.data;
      return result;
    } else {
      log('요청실패: ${res.statusCode}');
      return {};
    }
  } on DioException catch (e, s) {
    log('Not Found', error: e, stackTrace: s);
    Toast.show('사이트 주소를 확인해 주세요');
    return {};
  } on TimeoutException catch (_) {
    Toast.show('요청 시간 지연. 관리자에게 문의해 주세요.');
    return {};
  }
}
