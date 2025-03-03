import 'package:flutter/widgets.dart';

import '../primitives.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return Padding(
      padding: EdgeInsets.only(
        top: primitives.sizes.m,
        bottom: primitives.sizes.xxs,
        left: primitives.sizes.s,
        right: primitives.sizes.s,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          title,
          style: primitives.typography.text,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
