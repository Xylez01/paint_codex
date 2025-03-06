import 'package:flutter/material.dart';
import 'package:paint_codex/design_system/components/action_button.dart';
import 'package:paint_codex/design_system/components/header.dart';

import '../primitives.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({
    required this.title,
    required this.slivers,
    this.actionButton,
    super.key,
  });

  final String title;

  final List<Widget> slivers;

  final ActionButton? actionButton;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Header(title: title),
            ),
            ...slivers,
            if (actionButton != null)
              SliverToBoxAdapter(
                child: SizedBox(height: ActionButton.height + primitives.sizes.s * 2),
              ),
          ],
        ),
        if (actionButton != null)
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(primitives.sizes.s),
              child: actionButton!,
            ),
          ),
      ],
    );
  }
}
