// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaintImpl _$$PaintImplFromJson(Map<String, dynamic> json) => _$PaintImpl(
      id: const PaintIdJsonConverter().fromJson(json['id'] as String),
      manufacturerId: const ManufacturerIdJsonConverter()
          .fromJson(json['manufacturer_id'] as String),
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String,
      color: const ColorConverter().fromJson(json['color'] as String),
      barcode: json['barcode'] as String,
      type: json['type'] as String,
      hue: (json['hue'] as num).toInt(),
      saturation: (json['saturation'] as num).toInt(),
      value: (json['value'] as num).toInt(),
      metallic: json['metallic'] as bool,
      wash: json['wash'] as bool,
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
      'metallic': instance.metallic,
      'wash': instance.wash,
    };
