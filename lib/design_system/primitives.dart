import 'package:flutter/widgets.dart';

class Primitives extends InheritedWidget {
  Primitives({required super.child, super.key}) : _primitivesState = PrimitivesState.build();

  final PrimitivesState _primitivesState;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static PrimitivesState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Primitives>()?._primitivesState ?? PrimitivesState.build();
}

@immutable
class PrimitivesState {
  const PrimitivesState({
    required this.typography,
    required this.sizes,
  });

  final Typography typography;
  final Spacings sizes;

  factory PrimitivesState.build() => PrimitivesState(
        typography: Typography.build(),
        sizes: Spacings(),
      );
}

@immutable
class Spacings {
  const Spacings({
    this.xxxs = 4.0,
    this.xxs = 8.0,
    this.xs = 12.0,
    this.s = 16.0,
    this.m = 20.0,
    this.l = 24.0,
    this.xl = 32.0,
    this.xxl = 40.0,
  });

  final double xxxs;
  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;
}

@immutable
class Typography {
  const Typography({
    required this.header,
    required this.text,
    required this.textBold,
  });

  final TextStyle header;
  final TextStyle text;
  final TextStyle textBold;

  factory Typography.build() => Typography(
        header: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        text: TextStyle(
          fontFamily: _fontFamily,
          fontSize: 16,
        ),
        textBold: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      );

  static const String _fontFamily = 'DM Sans';
}
