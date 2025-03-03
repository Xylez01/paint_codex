// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaintCollectionImpl _$$PaintCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$PaintCollectionImpl(
      paints: (json['paints'] as List<dynamic>)
          .map((e) => const PaintIdJsonConverter().fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$$PaintCollectionImplToJson(
        _$PaintCollectionImpl instance) =>
    <String, dynamic>{
      'paints':
          instance.paints.map(const PaintIdJsonConverter().toJson).toList(),
    };
