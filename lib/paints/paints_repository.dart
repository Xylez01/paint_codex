import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:paint_codex/paints/paint.dart';

class PaintsRepository {
  late final List<Paint> _paints;

  bool _initialized = false;

  Future<List<Paint>> getAll() async {
    if (!_initialized) {
      final content = await rootBundle.loadString('assets/paints.json');

      _paints = (jsonDecode(content) as List<Object?>)
          .map((paintAsJson) => paintAsJson as Map<String, Object?>)
          .map(Paint.fromJson)
          .toList(growable: false);

      _initialized = true;
    }

    return _paints;
  }
}
