// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_collection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaintCollectionState {
  List<Paint> get paints => throw _privateConstructorUsedError;
  Map<String, List<Paint>> get paintsByManufacturer =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaintCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaintCollectionStateCopyWith<PaintCollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintCollectionStateCopyWith<$Res> {
  factory $PaintCollectionStateCopyWith(PaintCollectionState value,
          $Res Function(PaintCollectionState) then) =
      _$PaintCollectionStateCopyWithImpl<$Res, PaintCollectionState>;
  @useResult
  $Res call(
      {List<Paint> paints, Map<String, List<Paint>> paintsByManufacturer});
}

/// @nodoc
class _$PaintCollectionStateCopyWithImpl<$Res,
        $Val extends PaintCollectionState>
    implements $PaintCollectionStateCopyWith<$Res> {
  _$PaintCollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaintCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paints = null,
    Object? paintsByManufacturer = null,
  }) {
    return _then(_value.copyWith(
      paints: null == paints
          ? _value.paints
          : paints // ignore: cast_nullable_to_non_nullable
              as List<Paint>,
      paintsByManufacturer: null == paintsByManufacturer
          ? _value.paintsByManufacturer
          : paintsByManufacturer // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Paint>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaintCollectionStateImplCopyWith<$Res>
    implements $PaintCollectionStateCopyWith<$Res> {
  factory _$$PaintCollectionStateImplCopyWith(_$PaintCollectionStateImpl value,
          $Res Function(_$PaintCollectionStateImpl) then) =
      __$$PaintCollectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Paint> paints, Map<String, List<Paint>> paintsByManufacturer});
}

/// @nodoc
class __$$PaintCollectionStateImplCopyWithImpl<$Res>
    extends _$PaintCollectionStateCopyWithImpl<$Res, _$PaintCollectionStateImpl>
    implements _$$PaintCollectionStateImplCopyWith<$Res> {
  __$$PaintCollectionStateImplCopyWithImpl(_$PaintCollectionStateImpl _value,
      $Res Function(_$PaintCollectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaintCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paints = null,
    Object? paintsByManufacturer = null,
  }) {
    return _then(_$PaintCollectionStateImpl(
      paints: null == paints
          ? _value._paints
          : paints // ignore: cast_nullable_to_non_nullable
              as List<Paint>,
      paintsByManufacturer: null == paintsByManufacturer
          ? _value._paintsByManufacturer
          : paintsByManufacturer // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Paint>>,
    ));
  }
}

/// @nodoc

class _$PaintCollectionStateImpl implements _PaintCollectionState {
  const _$PaintCollectionStateImpl(
      {required final List<Paint> paints,
      required final Map<String, List<Paint>> paintsByManufacturer})
      : _paints = paints,
        _paintsByManufacturer = paintsByManufacturer;

  final List<Paint> _paints;
  @override
  List<Paint> get paints {
    if (_paints is EqualUnmodifiableListView) return _paints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paints);
  }

  final Map<String, List<Paint>> _paintsByManufacturer;
  @override
  Map<String, List<Paint>> get paintsByManufacturer {
    if (_paintsByManufacturer is EqualUnmodifiableMapView)
      return _paintsByManufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paintsByManufacturer);
  }

  @override
  String toString() {
    return 'PaintCollectionState(paints: $paints, paintsByManufacturer: $paintsByManufacturer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaintCollectionStateImpl &&
            const DeepCollectionEquality().equals(other._paints, _paints) &&
            const DeepCollectionEquality()
                .equals(other._paintsByManufacturer, _paintsByManufacturer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paints),
      const DeepCollectionEquality().hash(_paintsByManufacturer));

  /// Create a copy of PaintCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaintCollectionStateImplCopyWith<_$PaintCollectionStateImpl>
      get copyWith =>
          __$$PaintCollectionStateImplCopyWithImpl<_$PaintCollectionStateImpl>(
              this, _$identity);
}

abstract class _PaintCollectionState implements PaintCollectionState {
  const factory _PaintCollectionState(
          {required final List<Paint> paints,
          required final Map<String, List<Paint>> paintsByManufacturer}) =
      _$PaintCollectionStateImpl;

  @override
  List<Paint> get paints;
  @override
  Map<String, List<Paint>> get paintsByManufacturer;

  /// Create a copy of PaintCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaintCollectionStateImplCopyWith<_$PaintCollectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
