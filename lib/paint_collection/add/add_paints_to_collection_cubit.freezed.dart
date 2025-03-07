// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_paints_to_collection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPaintsToCollectionState {
  Map<String, List<Paint>> get paintsByManufacturer =>
      throw _privateConstructorUsedError;
  List<PaintId> get paintsInCollection => throw _privateConstructorUsedError;

  /// Create a copy of AddPaintsToCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPaintsToCollectionStateCopyWith<AddPaintsToCollectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPaintsToCollectionStateCopyWith<$Res> {
  factory $AddPaintsToCollectionStateCopyWith(AddPaintsToCollectionState value,
          $Res Function(AddPaintsToCollectionState) then) =
      _$AddPaintsToCollectionStateCopyWithImpl<$Res,
          AddPaintsToCollectionState>;
  @useResult
  $Res call(
      {Map<String, List<Paint>> paintsByManufacturer,
      List<PaintId> paintsInCollection});
}

/// @nodoc
class _$AddPaintsToCollectionStateCopyWithImpl<$Res,
        $Val extends AddPaintsToCollectionState>
    implements $AddPaintsToCollectionStateCopyWith<$Res> {
  _$AddPaintsToCollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPaintsToCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paintsByManufacturer = null,
    Object? paintsInCollection = null,
  }) {
    return _then(_value.copyWith(
      paintsByManufacturer: null == paintsByManufacturer
          ? _value.paintsByManufacturer
          : paintsByManufacturer // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Paint>>,
      paintsInCollection: null == paintsInCollection
          ? _value.paintsInCollection
          : paintsInCollection // ignore: cast_nullable_to_non_nullable
              as List<PaintId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPaintsToCollectionStateImplCopyWith<$Res>
    implements $AddPaintsToCollectionStateCopyWith<$Res> {
  factory _$$AddPaintsToCollectionStateImplCopyWith(
          _$AddPaintsToCollectionStateImpl value,
          $Res Function(_$AddPaintsToCollectionStateImpl) then) =
      __$$AddPaintsToCollectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<Paint>> paintsByManufacturer,
      List<PaintId> paintsInCollection});
}

/// @nodoc
class __$$AddPaintsToCollectionStateImplCopyWithImpl<$Res>
    extends _$AddPaintsToCollectionStateCopyWithImpl<$Res,
        _$AddPaintsToCollectionStateImpl>
    implements _$$AddPaintsToCollectionStateImplCopyWith<$Res> {
  __$$AddPaintsToCollectionStateImplCopyWithImpl(
      _$AddPaintsToCollectionStateImpl _value,
      $Res Function(_$AddPaintsToCollectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPaintsToCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paintsByManufacturer = null,
    Object? paintsInCollection = null,
  }) {
    return _then(_$AddPaintsToCollectionStateImpl(
      paintsByManufacturer: null == paintsByManufacturer
          ? _value._paintsByManufacturer
          : paintsByManufacturer // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Paint>>,
      paintsInCollection: null == paintsInCollection
          ? _value._paintsInCollection
          : paintsInCollection // ignore: cast_nullable_to_non_nullable
              as List<PaintId>,
    ));
  }
}

/// @nodoc

class _$AddPaintsToCollectionStateImpl implements _AddPaintsToCollectionState {
  const _$AddPaintsToCollectionStateImpl(
      {required final Map<String, List<Paint>> paintsByManufacturer,
      required final List<PaintId> paintsInCollection})
      : _paintsByManufacturer = paintsByManufacturer,
        _paintsInCollection = paintsInCollection;

  final Map<String, List<Paint>> _paintsByManufacturer;
  @override
  Map<String, List<Paint>> get paintsByManufacturer {
    if (_paintsByManufacturer is EqualUnmodifiableMapView)
      return _paintsByManufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paintsByManufacturer);
  }

  final List<PaintId> _paintsInCollection;
  @override
  List<PaintId> get paintsInCollection {
    if (_paintsInCollection is EqualUnmodifiableListView)
      return _paintsInCollection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paintsInCollection);
  }

  @override
  String toString() {
    return 'AddPaintsToCollectionState(paintsByManufacturer: $paintsByManufacturer, paintsInCollection: $paintsInCollection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaintsToCollectionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._paintsByManufacturer, _paintsByManufacturer) &&
            const DeepCollectionEquality()
                .equals(other._paintsInCollection, _paintsInCollection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paintsByManufacturer),
      const DeepCollectionEquality().hash(_paintsInCollection));

  /// Create a copy of AddPaintsToCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaintsToCollectionStateImplCopyWith<_$AddPaintsToCollectionStateImpl>
      get copyWith => __$$AddPaintsToCollectionStateImplCopyWithImpl<
          _$AddPaintsToCollectionStateImpl>(this, _$identity);
}

abstract class _AddPaintsToCollectionState
    implements AddPaintsToCollectionState {
  const factory _AddPaintsToCollectionState(
          {required final Map<String, List<Paint>> paintsByManufacturer,
          required final List<PaintId> paintsInCollection}) =
      _$AddPaintsToCollectionStateImpl;

  @override
  Map<String, List<Paint>> get paintsByManufacturer;
  @override
  List<PaintId> get paintsInCollection;

  /// Create a copy of AddPaintsToCollectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPaintsToCollectionStateImplCopyWith<_$AddPaintsToCollectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
