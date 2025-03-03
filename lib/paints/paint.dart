import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paint.parsing.dart';

part 'paint.freezed.dart';

part 'paint.g.dart';

abstract class IntId {
  const IntId(this.id);

  final int id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is IntId && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

abstract class StringId {
  const StringId(this.id);

  final String id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is StringId && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

class PaintId extends IntId {
  const PaintId(super.id);
}

class ManufacturerId extends StringId {
  const ManufacturerId(super.id);
}

typedef PaintsByManufacturer = Map<String, List<Paint>>;

@freezed
@immutable
abstract class Paint with _$Paint {
  @JsonSerializable(converters: [
    PaintIdJsonConverter(),
    ManufacturerIdJsonConverter(),
    ColorConverter(),
    IntToBoolConverter(),
  ])
  const factory Paint({
    required PaintId id,
    @JsonKey(name: 'manufacturer_id') required ManufacturerId manufacturerId,
    required String name,
    required String manufacturer,
    required Color color,
    required int? barcode,
    required String type,
    required int hue,
    required int saturation,
    required int value,
    required bool metallic,
    required bool wash,
  }) = _Paint;

  factory Paint.fromJson(Map<String, Object?> json) => _$PaintFromJson(json);
}
