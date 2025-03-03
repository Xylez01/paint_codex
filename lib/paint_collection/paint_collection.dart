import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paint_codex/paints/paint.dart';

part 'paint_collection.freezed.dart';

part 'paint_collection.g.dart';

@freezed
@immutable
abstract class PaintCollection with _$PaintCollection {
  @JsonSerializable(converters: [PaintIdJsonConverter()])
  const factory PaintCollection({
    required List<PaintId> paints,
  }) = _PaintCollection;

  factory PaintCollection.empty() => PaintCollection(paints: <PaintId>[].toList(growable: false));

  factory PaintCollection.fromJson(Map<String, Object?> json) => _$PaintCollectionFromJson(json);
}
