import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/login/login_view_model.dart';
import 'package:safe_guard/theme/component/button/button.dart';
import 'package:safe_guard/theme/component/custom_text_form_field.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  @override
  void initState() {
    super.initState();
    ref.read(loginViewModelProvider.notifier).getToken();
    ref.read(loginViewModelProvider.notifier).getSiteList();
    ref.read(loginViewModelProvider.notifier).userInfo(context);
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModelProvider: loginViewModelProvider,
      builder: (ref, viewModel, state) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// 사이트 입력
              CustomTextFormField(
                onChanged: (value) => viewModel.getSiteUrl(value),
                hintText: '사이트를 입력해주세요',
                initialValue: state.siteUrl,
              ),
              const SizedBox(height: 20.0),

              /// 아이디 입력
              CustomTextFormField(
                onChanged: (value) => viewModel.getUserId(value),
                hintText: '아이디',
                initialValue: state.userId,
              ),
              const SizedBox(height: 20.0),

              /// 비밀번호 입력
              CustomTextFormField(
                onChanged: (value) => viewModel.getPassword(value),
                hintText: '비밀번호',
                obscureText: true,
              ),
              const SizedBox(height: 20.0),

              /// 자동 로그인 체크박스
              CheckboxListTile(
                value: state.isChecked,
                onChanged: (value) => viewModel.checkboxClick(value),
                title: const Text('자동 로그인'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: ref.color.primary,
              ),
              const SizedBox(height: 20.0),

              /// 로그인 버튼
              Button(
                onPressed: () => viewModel.loginButton(context),
                type: ButtonType.fill,
                size: ButtonSize.large,
                text: '로그인',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
