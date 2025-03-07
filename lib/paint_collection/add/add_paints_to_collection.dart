import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/design_system/primitives.dart';
import 'package:paint_codex/design_system/templates/page.dart';
import 'package:paint_codex/paints/components/paints_by_manufacturer_grid.dart';

import 'add_paints_to_collection_cubit.dart';

class AddPaintsToCollection extends StatelessWidget {
  const AddPaintsToCollection({super.key});

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return BlocProvider(
      create: (context) => AddPaintsToCollectionCubit(context.read(), context.read()),
      child: Scaffold(
        body: BlocBuilder<AddPaintsToCollectionCubit, AddPaintsToCollectionState>(
          builder: (context, state) => PageTemplate(
            title: "Add paints",
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(primitives.sizes.s),
                  child: SearchBar(
                    leading: Padding(
                      padding: EdgeInsets.all(primitives.sizes.xxs),
                      child: Icon(Icons.search),
                    ),
                    hintText: "Search by name or manufacturer id",
                    onChanged: (query) => context.read<AddPaintsToCollectionCubit>().search(query),
                    onSubmitted: (query) => context.read<AddPaintsToCollectionCubit>().search(query),
                  ),
                ),
              ),
              PaintsByManufacturerGrid(
                paintsByManufacturer: state.paintsByManufacturer,
                onTap: (paintId) => context.read<AddPaintsToCollectionCubit>().toggle(paintId),
                selectionStateBuilder: (paintId) => state.paintsInCollection.contains(paintId)
                    ? PaintSelectionState.selected
                    : PaintSelectionState.unselected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
