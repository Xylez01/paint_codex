import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paint.parsing.dart';
part 'paint.freezed.dart';
part 'paint.g.dart';

abstract class StringId {
  const StringId(this.id);

  final String id;
}

class PaintId extends StringId {
  const PaintId(super.id);
}

class ManufacturerId extends StringId {
  const ManufacturerId(super.id);
}

@freezed
@immutable
abstract class Paint with _$Paint {
  @JsonSerializable(converters: [PaintIdJsonConverter(), ManufacturerIdJsonConverter(), ColorConverter()])
  const factory Paint({
    required PaintId id,
    @JsonKey(name: 'manufacturer_id')
    required ManufacturerId manufacturerId,
    required String name,
    required String manufacturer,
    required Color color,
    required String barcode,
    required String type,
    required int hue,
    required int saturation,
    required int value,
    required bool metallic,
    required bool wash,
}) = _Paint;


  factory Paint.fromJson(Map<String, Object?> json) => _$PaintFromJson(json);
}