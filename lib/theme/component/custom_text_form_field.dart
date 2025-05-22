import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class CustomTextFormField extends ConsumerWidget {
  const CustomTextFormField({
    super.key,
    required this.onChanged,
    this.hintText,
    this.errorText,
    this.initialValue,
    this.obscureText = false,
    this.autofocus = false,
  });

  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? errorText;
  final String? initialValue;
  final bool obscureText;
  final bool autofocus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      /// 키보드 숨기기
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),

      /// 초기 텍스트
      initialValue: initialValue,

      /// 텍스트 변경 감지
      onChanged: onChanged,

      /// 텍스트 가리기(비밀번호)
      obscureText: obscureText,

      /// 자동 포커스
      autofocus: autofocus,
      decoration: InputDecoration(
        /// padding
        contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),

        /// 배경 색상
        filled: true,
        fillColor: ref.color.onPrimary,

        /// 힌트 스타일
        hintText: hintText,
        errorText: errorText,
        hintStyle: ref.typo.subtitle2.copyWith(
          color: ref.color.subtext,
        ),

        /// 테두리 설정
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ref.color.hint,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),

        /// 포커스 테두리 설정
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ref.color.primary,
          ),
        ),
      ),

      /// 커서 색상
      cursorColor: ref.color.primary,
    );
  }
}
