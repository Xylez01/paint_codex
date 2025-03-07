import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:paint_codex/paint_collection/paint_collection.dart';
import 'package:paint_codex/paints/paint.dart';

import '../persistent_storage.dart';

class PaintCollectionRepository with ChangeNotifier {
  PaintCollectionRepository._(this._storage, this._paintCollection);

  static Future<PaintCollectionRepository> create({required PersistentStorageBuilder buildStorage}) async {
    final storage = await buildStorage(key: "paint_collection");
    final json = storage.read();

    return PaintCollectionRepository._(
      await buildStorage(key: "paint_collection"),
      json == null ? PaintCollection.empty() : PaintCollection.fromJson(jsonDecode(json)),
    );
  }

  final PersistentStorage _storage;

  PaintCollection _paintCollection;

  PaintCollection get paintCollection => _paintCollection;

  void add(PaintId paintId) {
    _paintCollection = _paintCollection.copyWith(
      paints: {..._paintCollection.paints, paintId}.toList(growable: false),
    );

    _persist();
  }

  void remove(PaintId paintId) {
    _paintCollection = _paintCollection.copyWith(
      paints: _paintCollection.paints.where((id) => id != paintId).toList(growable: false),
    );

    _persist();
  }

  void _persist() {
    unawaited(_storage.write(jsonEncode(_paintCollection.toJson())));
    notifyListeners();
  }
}
