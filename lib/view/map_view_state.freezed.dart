// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MapViewStateTearOff {
  const _$MapViewStateTearOff();

// ignore: unused_element
  _MapViewState call(
      {List<Point> points = const <Point>[],
      Point focusPoint,
      bool onTapPoint = false}) {
    return _MapViewState(
      points: points,
      focusPoint: focusPoint,
      onTapPoint: onTapPoint,
    );
  }
}

// ignore: unused_element
const $MapViewState = _$MapViewStateTearOff();

mixin _$MapViewState {
  List<Point> get points;
  Point get focusPoint;
  bool get onTapPoint;

  $MapViewStateCopyWith<MapViewState> get copyWith;
}

abstract class $MapViewStateCopyWith<$Res> {
  factory $MapViewStateCopyWith(
          MapViewState value, $Res Function(MapViewState) then) =
      _$MapViewStateCopyWithImpl<$Res>;
  $Res call({List<Point> points, Point focusPoint, bool onTapPoint});

  $PointCopyWith<$Res> get focusPoint;
}

class _$MapViewStateCopyWithImpl<$Res> implements $MapViewStateCopyWith<$Res> {
  _$MapViewStateCopyWithImpl(this._value, this._then);

  final MapViewState _value;
  // ignore: unused_field
  final $Res Function(MapViewState) _then;

  @override
  $Res call({
    Object points = freezed,
    Object focusPoint = freezed,
    Object onTapPoint = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed ? _value.points : points as List<Point>,
      focusPoint:
          focusPoint == freezed ? _value.focusPoint : focusPoint as Point,
      onTapPoint:
          onTapPoint == freezed ? _value.onTapPoint : onTapPoint as bool,
    ));
  }

  @override
  $PointCopyWith<$Res> get focusPoint {
    if (_value.focusPoint == null) {
      return null;
    }
    return $PointCopyWith<$Res>(_value.focusPoint, (value) {
      return _then(_value.copyWith(focusPoint: value));
    });
  }
}

abstract class _$MapViewStateCopyWith<$Res>
    implements $MapViewStateCopyWith<$Res> {
  factory _$MapViewStateCopyWith(
          _MapViewState value, $Res Function(_MapViewState) then) =
      __$MapViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Point> points, Point focusPoint, bool onTapPoint});

  @override
  $PointCopyWith<$Res> get focusPoint;
}

class __$MapViewStateCopyWithImpl<$Res> extends _$MapViewStateCopyWithImpl<$Res>
    implements _$MapViewStateCopyWith<$Res> {
  __$MapViewStateCopyWithImpl(
      _MapViewState _value, $Res Function(_MapViewState) _then)
      : super(_value, (v) => _then(v as _MapViewState));

  @override
  _MapViewState get _value => super._value as _MapViewState;

  @override
  $Res call({
    Object points = freezed,
    Object focusPoint = freezed,
    Object onTapPoint = freezed,
  }) {
    return _then(_MapViewState(
      points: points == freezed ? _value.points : points as List<Point>,
      focusPoint:
          focusPoint == freezed ? _value.focusPoint : focusPoint as Point,
      onTapPoint:
          onTapPoint == freezed ? _value.onTapPoint : onTapPoint as bool,
    ));
  }
}

class _$_MapViewState implements _MapViewState {
  _$_MapViewState(
      {this.points = const <Point>[], this.focusPoint, this.onTapPoint = false})
      : assert(points != null),
        assert(onTapPoint != null);

  @JsonKey(defaultValue: const <Point>[])
  @override
  final List<Point> points;
  @override
  final Point focusPoint;
  @JsonKey(defaultValue: false)
  @override
  final bool onTapPoint;

  @override
  String toString() {
    return 'MapViewState(points: $points, focusPoint: $focusPoint, onTapPoint: $onTapPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapViewState &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.focusPoint, focusPoint) ||
                const DeepCollectionEquality()
                    .equals(other.focusPoint, focusPoint)) &&
            (identical(other.onTapPoint, onTapPoint) ||
                const DeepCollectionEquality()
                    .equals(other.onTapPoint, onTapPoint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(focusPoint) ^
      const DeepCollectionEquality().hash(onTapPoint);

  @override
  _$MapViewStateCopyWith<_MapViewState> get copyWith =>
      __$MapViewStateCopyWithImpl<_MapViewState>(this, _$identity);
}

abstract class _MapViewState implements MapViewState {
  factory _MapViewState(
      {List<Point> points,
      Point focusPoint,
      bool onTapPoint}) = _$_MapViewState;

  @override
  List<Point> get points;
  @override
  Point get focusPoint;
  @override
  bool get onTapPoint;
  @override
  _$MapViewStateCopyWith<_MapViewState> get copyWith;
}
