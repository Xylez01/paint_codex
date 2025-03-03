// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaintCollection _$PaintCollectionFromJson(Map<String, dynamic> json) {
  return _PaintCollection.fromJson(json);
}

/// @nodoc
mixin _$PaintCollection {
  List<PaintId> get paints => throw _privateConstructorUsedError;

  /// Serializes this PaintCollection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaintCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaintCollectionCopyWith<PaintCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintCollectionCopyWith<$Res> {
  factory $PaintCollectionCopyWith(
          PaintCollection value, $Res Function(PaintCollection) then) =
      _$PaintCollectionCopyWithImpl<$Res, PaintCollection>;
  @useResult
  $Res call({List<PaintId> paints});
}

/// @nodoc
class _$PaintCollectionCopyWithImpl<$Res, $Val extends PaintCollection>
    implements $PaintCollectionCopyWith<$Res> {
  _$PaintCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaintCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paints = null,
  }) {
    return _then(_value.copyWith(
      paints: null == paints
          ? _value.paints
          : paints // ignore: cast_nullable_to_non_nullable
              as List<PaintId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaintCollectionImplCopyWith<$Res>
    implements $PaintCollectionCopyWith<$Res> {
  factory _$$PaintCollectionImplCopyWith(_$PaintCollectionImpl value,
          $Res Function(_$PaintCollectionImpl) then) =
      __$$PaintCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaintId> paints});
}

/// @nodoc
class __$$PaintCollectionImplCopyWithImpl<$Res>
    extends _$PaintCollectionCopyWithImpl<$Res, _$PaintCollectionImpl>
    implements _$$PaintCollectionImplCopyWith<$Res> {
  __$$PaintCollectionImplCopyWithImpl(
      _$PaintCollectionImpl _value, $Res Function(_$PaintCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaintCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paints = null,
  }) {
    return _then(_$PaintCollectionImpl(
      paints: null == paints
          ? _value._paints
          : paints // ignore: cast_nullable_to_non_nullable
              as List<PaintId>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [PaintIdJsonConverter()])
class _$PaintCollectionImpl implements _PaintCollection {
  const _$PaintCollectionImpl({required final List<PaintId> paints})
      : _paints = paints;

  factory _$PaintCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaintCollectionImplFromJson(json);

  final List<PaintId> _paints;
  @override
  List<PaintId> get paints {
    if (_paints is EqualUnmodifiableListView) return _paints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paints);
  }

  @override
  String toString() {
    return 'PaintCollection(paints: $paints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaintCollectionImpl &&
            const DeepCollectionEquality().equals(other._paints, _paints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_paints));

  /// Create a copy of PaintCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaintCollectionImplCopyWith<_$PaintCollectionImpl> get copyWith =>
      __$$PaintCollectionImplCopyWithImpl<_$PaintCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaintCollectionImplToJson(
      this,
    );
  }
}

abstract class _PaintCollection implements PaintCollection {
  const factory _PaintCollection({required final List<PaintId> paints}) =
      _$PaintCollectionImpl;

  factory _PaintCollection.fromJson(Map<String, dynamic> json) =
      _$PaintCollectionImpl.fromJson;

  @override
  List<PaintId> get paints;

  /// Create a copy of PaintCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaintCollectionImplCopyWith<_$PaintCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
