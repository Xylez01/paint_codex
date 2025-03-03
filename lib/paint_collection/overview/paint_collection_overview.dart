import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/design_system/templates/page.dart';
import 'package:paint_codex/paints/components/paints_by_manufacturer_grid.dart';
import 'package:paint_codex/paints/paints_cubit.dart';

import '../../paints/paint.dart';

class PaintCollectionOverview extends StatelessWidget {
  const PaintCollectionOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaintsByManufacturerCubit, PaintsByManufacturer>(
      builder: (BuildContext context, PaintsByManufacturer state) {
        return PageTemplate(
          title: 'Paint Collection',
          slivers: [
            PaintsByManufacturerGrid(paintsByManufacturer: state),
          ],
        );
      },
    );
  }
}
