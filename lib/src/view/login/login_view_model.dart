import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/service/secure_storage.dart';
import 'package:safe_guard/src/view/login/login_view_state.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';
import 'package:safe_guard/util/route_path.dart';

part 'login_view_model.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginViewState build() {
    return LoginViewState(
      isBusy: false,
      isChecked: true,
      siteList: [],
      siteUrl: '',
      siteId: '',
      userId: '',
      password: '',
      token: '',
      storage: ref.watch(secureStorageProvider),
    );
  }

  /// 토큰 발급
  void getToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    state = state.copyWith(token: token);
  }

  /// 사이트 리스트 불러오기
  void getSiteList() async {
    final result = await Future.wait([
      ref.read(getSiteListProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(siteList: result[0]);
  }

  /// 자동 로그인 체크박스
  void checkboxClick(bool? value) async {
    state = state.copyWith(isChecked: value!);
  }

  /// 사이트 주소 입력
  void getSiteUrl(String value) {
    state = state.copyWith(siteUrl: value);
  }

  /// 아이디 입력
  void getUserId(String value) {
    state = state.copyWith(userId: value);
  }

  /// 비밀번호 입력
  void getPassword(String value) {
    state = state.copyWith(password: value);
  }

  /// 자동 로그인
  void userInfo(context) async {
    final siteUrl = await state.storage.read(key: 'siteUrl');
    final userId = await state.storage.read(key: 'userId');
    final password = await state.storage.read(key: 'password');
    state = state.copyWith(siteUrl: siteUrl, userId: userId, password: password);

    if (siteUrl != null && userId != null && password != null) {
      login(context);
    }
  }

  /// 로그인 버튼 클릭
  void loginButton(context) async {
    final result1 = state.siteList.where(
      (element) => element.siteDomain == state.siteUrl,
    );
    if (result1.isEmpty) return Toast.show('사이트 아이디를 찾을 수 없습니다.');
    final siteId = result1.elementAt(0).siteId;
    state = state.copyWith(siteId: siteId);

    await state.storage.write(key: 'siteUrl', value: state.siteUrl);
    await state.storage.write(key: 'userId', value: state.userId);
    await state.storage.write(key: 'password', value: state.password);
    await state.storage.write(key: 'mobileKey', value: state.token);
    await state.storage.write(key: 'siteId', value: state.siteId);

    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(loginActionProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false);
    if (result[0]['loginResult'] == true) {
      Navigator.pushNamed(context, RoutePath.home);
    }
    if (result[0]['loginResult'] == false) {
      Toast.show('아이디, 비밀번호를 확인해주세요');
    }
  }

  /// 로그인
  void login(context) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(loginActionProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false);
    if (result[0]['loginResult'] == true) {
      Navigator.pushNamed(context, RoutePath.home);
    }
    if (result[0]['loginResult'] == false) {
      Toast.show('아이디, 비밀번호를 확인해주세요');
    }
  }
}
