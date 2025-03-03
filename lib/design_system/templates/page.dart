import 'package:flutter/material.dart';
import 'package:paint_codex/design_system/components/header.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({required this.title, required this.slivers, super.key});

  final String title;

  final List<Widget> slivers;
  
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Header(title: title),
        ),
        ...slivers,
      ],
    );
  }
}
