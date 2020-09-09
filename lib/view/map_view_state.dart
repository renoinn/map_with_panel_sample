import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_with_panel_sample/entity/point.dart';

part 'map_view_state.freezed.dart';

@freezed
abstract class MapViewState with _$MapViewState {
  factory MapViewState({
    @Default(<Point>[]) List<Point> points,
    Point focusPoint,
    @Default(false) bool onTapPoint,
  }) = _MapViewState;
}
