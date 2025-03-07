import 'package:flutter/material.dart' show Colors, Icons, InkWell, Material;
import 'package:flutter/widgets.dart';
import 'package:paint_codex/design_system/components/section_header.dart';
import 'package:paint_codex/design_system/primitives.dart';

import '../paint.dart';

enum PaintSelectionState {
  selected,
  unselected,
}

class PaintsByManufacturerGrid extends StatelessWidget {
  const PaintsByManufacturerGrid({
    required this.paintsByManufacturer,
    this.onTap,
    this.selectionStateBuilder,
    super.key,
  });

  final PaintsByManufacturer paintsByManufacturer;

  final void Function(PaintId)? onTap;

  final PaintSelectionState Function(PaintId)? selectionStateBuilder;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: paintsByManufacturer.length,
        (context, index) {
          final manufacturer = paintsByManufacturer.keys.elementAt(index);
          final paints = paintsByManufacturer[manufacturer] ?? [];
          final maxCrossAxisExtent = 110.0;

          return Column(
            children: [
              SectionHeader(title: manufacturer),
              Padding(
                padding: EdgeInsets.all(primitives.sizes.xs),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: maxCrossAxisExtent,
                    mainAxisSpacing: primitives.sizes.l,
                    crossAxisSpacing: primitives.sizes.l,
                    childAspectRatio: 1.0,
                  ),
                  shrinkWrap: true,
                  children: paints
                      .map(
                        (paint) => _PaintCard(
                          paint: paint,
                          selectionState: selectionStateBuilder?.call(paint.id) ?? PaintSelectionState.unselected,
                          maxSize: maxCrossAxisExtent,
                          onTap: onTap,
                          // key: ValueKey(paint.id),
                        ),
                      )
                      .toList(growable: false),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class _PaintCard extends StatelessWidget {
  const _PaintCard({
    required this.paint,
    required this.selectionState,
    required this.maxSize,
    this.onTap,
  });

  final Paint paint;
  final PaintSelectionState selectionState;
  final double maxSize;
  final void Function(PaintId)? onTap;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    Widget withInkWell({required Widget child}) {
      if (onTap == null) {
        return child;
      }

      return Material(
        color: paint.color.withValues(alpha: 0.9),
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () => onTap?.call(paint.id),
          child: child,
        ),
      );
    }

    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: paint.color,
            borderRadius: BorderRadius.circular(maxSize / 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.25),
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
            border: Border.all(
              color: Colors.black.withValues(alpha: 0.25),
              width: 2,
            ),
          ),
          child: withInkWell(
            child: Padding(
              padding: EdgeInsets.all(primitives.sizes.xxs),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    paint.name,
                    style: primitives.typography.text.copyWith(
                      fontSize: 11,
                      color: paint.color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    paint.manufacturerId.id,
                    style: primitives.typography.text.copyWith(
                      fontSize: 8,
                      color: paint.color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: AnimatedOpacity(
            opacity: selectionState == PaintSelectionState.selected ? 1 : 0,
            duration: const Duration(milliseconds: 400),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(maxSize / 2),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
