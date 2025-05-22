import 'package:safe_guard/theme/component/sound.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  static void updateSoundData(String key, Sound value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value.toString().split('.').last);
  }

  static Future<Sound> loadSoundData(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? soundString = prefs.getString(key);
    Sound soundData = soundString == 'basic'
        ? Sound.basic
        : soundString == 'sound1'
            ? Sound.sound1
            : Sound.sound2;
    return soundData;
  }
}
