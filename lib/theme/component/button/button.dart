import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';

part 'button_type.dart';

part 'button_size.dart';

class Button extends ConsumerStatefulWidget {
  const Button({
    super.key,
    required this.onPressed,
    this.text,
    this.icon,
    this.width,
    this.color,
    this.backgroundColor,
    this.borderColor,
    this.splashColor,
    this.highlightColor,
    this.textSize,
    this.iconSize,
    this.textDecoration,
    ButtonType? type,
    ButtonSize? size,
    bool? isInactive,
  })  : type = type ?? ButtonType.fill,
        size = size ?? ButtonSize.medium,
        isInactive = isInactive ?? false;

  /// 클릭 이벤트
  final void Function() onPressed;

  /// 버튼 타입 & 크기
  final ButtonType type;
  final ButtonSize size;

  /// 버튼 비활성화 여부
  final bool isInactive;

  /// 텍스트 & 아이콘
  final String? text;
  final String? icon;
  final double? textSize;
  final double? iconSize;
  final TextDecoration? textDecoration;

  /// 폭
  final double? width;

  /// 커스텀 색상
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;

  /// 버튼 클릭시 효과 색상
  final Color? splashColor;
  final Color? highlightColor;

  @override
  ConsumerState<Button> createState() => _ButtonState();
}

class _ButtonState extends ConsumerState<Button> {
  /// 버튼이 눌려있는지 여부
  bool isPressed = false;

  /// 비활성화 여부
  bool get isInactive => isPressed || widget.isInactive;

  /// 텍스트 & 아이콘 색상
  Color get color => widget.type.getColor(
        ref,
        isInactive,
        widget.color,
      );

  /// 백그라운드 색상
  Color get backgroundColor => widget.type.getBackgroundColor(
        ref,
        isInactive,
        widget.backgroundColor,
      );

  /// 테두리
  Border? get border => widget.type.getBorder(
        ref,
        isInactive,
        widget.borderColor,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// 클릭 이벤트
      onTap: () => widget.onPressed(),
      // onTapUp: (details) {
      //   onPressed(false);
      //   if (!widget.isInactive) {
      //     widget.onPressed();
      //   }
      // },
      // onTapDown: (details) => onPressed(true),
      // onTapCancel: () => onPressed(false),
      splashColor: widget.splashColor ?? Colors.transparent,
      highlightColor: widget.highlightColor ?? Colors.transparent,

      /// 버튼
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: widget.width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
          border: border,
        ),
        padding: EdgeInsets.all(widget.size.padding),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 아이콘
            if (widget.icon != null)
              AssetIcon(
                widget.icon!,
                color: color,
                size: widget.iconSize,
              ),

            /// 간격
            if (widget.icon != null && widget.text != null) const SizedBox(width: 8.0),

            /// 텍스트
            if (widget.text != null)
              Text(
                widget.text!,
                textScaler: TextScaler.noScaling,
                style: widget.size.getTextStyle(ref).copyWith(
                      color: color,
                      fontWeight: ref.typo.semiBold,
                      decoration: widget.textDecoration,
                      fontSize: widget.textSize,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
