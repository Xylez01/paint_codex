import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:paint_codex/design_system/components/section_header.dart';
import 'package:paint_codex/design_system/primitives.dart';

import '../paint.dart';

class PaintsByManufacturerGrid extends StatelessWidget {
  const PaintsByManufacturerGrid({
    required this.paintsByManufacturer,
    super.key,
  });

  final PaintsByManufacturer paintsByManufacturer;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: paintsByManufacturer.length,
        (context, index) {
          final manufacturer = paintsByManufacturer.keys.elementAt(index);
          final paints = paintsByManufacturer[manufacturer] ?? [];
          final maxCrossAxisExtent = 100.0;

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
                        (paint) => Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: paint.color,
                            borderRadius: BorderRadius.circular(maxCrossAxisExtent / 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.25),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(primitives.sizes.xxs),
                            child: Text(
                              paint.name,
                              style: primitives.typography.text.copyWith(
                                fontSize: 12,
                                color: paint.color.computeLuminance() > 0.5
                                    ? Colors.black
                                    : Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
