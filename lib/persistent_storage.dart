import 'package:shared_preferences/shared_preferences.dart';

class PersistentStorage {
  const PersistentStorage._(this._key, this._preferences);

  static Future<PersistentStorage> create({required String key}) async {
    final preferences = await SharedPreferences.getInstance();
    return PersistentStorage._(key, preferences);
  }

  final String _key;
  final SharedPreferences _preferences;

  String? read() => _preferences.getString(_key);

  Future<void> write(String value) => _preferences.setString(_key, value);
}

typedef PersistentStorageBuilder = Future<PersistentStorage> Function({required String key});
