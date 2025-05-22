import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/base_dialog.dart';
import 'package:safe_guard/theme/component/button/button.dart';
import 'package:safe_guard/theme/component/sound.dart';
import 'package:safe_guard/util/shared_prefs.dart';

class SettingsDialog extends ConsumerStatefulWidget {
  const SettingsDialog({
    super.key,
    required this.onLogoutPressed,
    required this.siteUrl,
  });

  final void Function() onLogoutPressed;
  final String siteUrl;

  @override
  ConsumerState<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends ConsumerState<SettingsDialog> {
  Sound? _sound = Sound.basic;
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    Sound soundData = await SharedPrefs.loadSoundData('sound');
    setState(() {
      _sound = soundData;
    });
  }

  /// 알람음 미리듣기
  void playSound(String sound) async {
    await audioPlayer.stop();
    await audioPlayer.play(
      AssetSource('$sound.mp3'),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: '설정',
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 타이틀
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '알림음 설정',
              style: ref.typo.subtitle1,
            ),
          ),

          /// 경고음 라디오 박스
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    '기본',
                    style: ref.typo.body1,
                  ),
                  contentPadding: const EdgeInsets.only(left: 8.0, right: 10.0),
                  horizontalTitleGap: 2.0,
                  leading: SizedBox(
                    width: 30,
                    child: Radio(
                      value: Sound.basic,
                      groupValue: _sound,
                      activeColor: ref.color.primary,
                      onChanged: (value) {
                        setState(() {
                          _sound = value;
                          SharedPrefs.updateSoundData('sound', value!);
                          playSound('basic');
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    '경고음1',
                    style: ref.typo.body1,
                  ),
                  contentPadding: const EdgeInsets.only(right: 22.0),
                  horizontalTitleGap: 2.0,
                  leading: SizedBox(
                    width: 30,
                    child: Radio(
                      value: Sound.sound1,
                      groupValue: _sound,
                      activeColor: ref.color.primary,
                      onChanged: (value) {
                        setState(() {
                          _sound = value;
                          SharedPrefs.updateSoundData('sound', value!);
                          playSound('siren');
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    '경고음2',
                    style: ref.typo.body1,
                  ),
                  contentPadding: const EdgeInsets.only(right: 22.0),
                  horizontalTitleGap: 2.0,
                  leading: SizedBox(
                    width: 30,
                    child: Radio(
                      value: Sound.sound2,
                      groupValue: _sound,
                      activeColor: ref.color.primary,
                      onChanged: (value) {
                        setState(() {
                          _sound = value;
                          SharedPrefs.updateSoundData('sound', value!);
                          playSound('siren2');
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),

          /// 타이틀
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
            child: Text(
              '사이트 주소',
              style: ref.typo.subtitle1,
            ),
          ),
          const SizedBox(height: 10.0),

          /// 사이트 주소
          Container(
            padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
            child: Text(
              widget.siteUrl,
              style: ref.typo.subtitle2,
            ),
          ),
          const Divider(),

          /// 타이틀
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
            child: Text(
              '버전',
              style: ref.typo.subtitle1,
            ),
          ),
          const SizedBox(height: 10.0),

          /// 버전
          Container(
            padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
            child: Text(
              '1.0.0',
              style: ref.typo.subtitle2,
            ),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: Button(
                onPressed: widget.onLogoutPressed,
                text: '로그아웃',
                type: ButtonType.fill,
                size: ButtonSize.large,
                backgroundColor: ref.color.onHintContainer,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Button(
                onPressed: () => Navigator.pop(context),
                text: '닫기',
                type: ButtonType.fill,
                size: ButtonSize.large,
                backgroundColor: ref.color.onHintContainer,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
