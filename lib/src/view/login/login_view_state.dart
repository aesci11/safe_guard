import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:safe_guard/src/model/site_list_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class LoginViewState extends BaseViewState {
  const LoginViewState({
    required this.isBusy,
    required this.isChecked,
    required this.siteList,
    required this.siteUrl,
    required this.siteId,
    required this.userId,
    required this.password,
    required this.token,
    required this.storage,
  });
  @override
  final bool isBusy;
  final bool isChecked;
  final List<SiteListModel> siteList;
  final String siteUrl;
  final String siteId;
  final String userId;
  final String password;
  final String token;
  final FlutterSecureStorage storage;

  LoginViewState copyWith({
    bool? isBusy,
    bool? isChecked,
    List<SiteListModel>? siteList,
    String? siteUrl,
    String? siteId,
    String? userId,
    String? password,
    String? token,
    FlutterSecureStorage? storage,
  }) {
    return LoginViewState(
      isBusy: isBusy ?? this.isBusy,
      isChecked: isChecked ?? this.isChecked,
      siteList: siteList ?? this.siteList,
      siteUrl: siteUrl ?? this.siteUrl,
      siteId: siteId ?? this.siteId,
      userId: userId ?? this.userId,
      password: password ?? this.password,
      token: token ?? this.token,
      storage: storage ?? this.storage,
    );
  }
}
