import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:paint_codex/paints/paint.dart';

class PaintsRepository {
  PaintsRepository._(this._paints);

  static Future<PaintsRepository> create() async {
    final content = await rootBundle.loadString('assets/paints.json');

    final paints = (jsonDecode(content) as List<Object?>)
        .map((paintAsJson) => paintAsJson as Map<String, Object?>)
        .map(Paint.fromJson)
        .toList(growable: false);

    return PaintsRepository._(paints);
  }

  final List<Paint> _paints;

  List<Paint> get paints => _paints;
}
