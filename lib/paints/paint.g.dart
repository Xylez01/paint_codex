// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaintImpl _$$PaintImplFromJson(Map<String, dynamic> json) => _$PaintImpl(
      id: const PaintIdJsonConverter().fromJson((json['id'] as num).toInt()),
      manufacturerId: const ManufacturerIdJsonConverter()
          .fromJson(json['manufacturer_id'] as String),
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String,
      color: const ColorConverter().fromJson(json['color'] as String),
      barcode: (json['barcode'] as num?)?.toInt(),
      type: json['type'] as String,
      hue: (json['hue'] as num).toInt(),
      saturation: (json['saturation'] as num).toInt(),
      value: (json['value'] as num).toInt(),
      metallic: const IntToBoolConverter()
          .fromJson((json['metallic'] as num).toInt()),
      wash: const IntToBoolConverter().fromJson((json['wash'] as num).toInt()),
    );

Map<String, dynamic> _$$PaintImplToJson(_$PaintImpl instance) =>
    <String, dynamic>{
      'id': const PaintIdJsonConverter().toJson(instance.id),
      'manufacturer_id':
          const ManufacturerIdJsonConverter().toJson(instance.manufacturerId),
      'name': instance.name,
      'manufacturer': instance.manufacturer,
      'color': const ColorConverter().toJson(instance.color),
      'barcode': instance.barcode,
      'type': instance.type,
      'hue': instance.hue,
      'saturation': instance.saturation,
      'value': instance.value,
      'metallic': const IntToBoolConverter().toJson(instance.metallic),
      'wash': const IntToBoolConverter().toJson(instance.wash),
    };
