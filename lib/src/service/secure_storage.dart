import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

@riverpod
class SecureStorage extends _$SecureStorage {
  @override
  FlutterSecureStorage build() {
    return const FlutterSecureStorage();
  }
}
