import 'package:flutter/material.dart' show Icons;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/design_system/components/action_button.dart';
import 'package:paint_codex/design_system/navigation.dart';
import 'package:paint_codex/design_system/templates/page.dart';
import 'package:paint_codex/paint_collection/add/add_paints_to_collection.dart';
import 'package:paint_codex/paints/components/paints_by_manufacturer_grid.dart';

import '../paint_collection_cubit.dart';

class PaintCollectionOverview extends StatelessWidget {
  const PaintCollectionOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaintsCollectionCubit, PaintCollectionState>(
      builder: (BuildContext context, PaintCollectionState state) {
        return PageTemplate(
          title: 'Paint Collection',
          slivers: [
            PaintsByManufacturerGrid(paintsByManufacturer: state.paintsByManufacturer),
          ],
          actionButton: ActionButton(
            onTap: () => showScreen(context, builder: (context) => AddPaintsToCollection()),
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
