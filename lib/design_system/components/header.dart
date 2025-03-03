import 'package:flutter/widgets.dart';

import '../primitives.dart';

class Header extends StatelessWidget {
  const Header({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final primitives = Primitives.of(context);

    return Padding(
      padding: EdgeInsets.only(
        top: primitives.sizes.m,
        bottom: primitives.sizes.xxs,
        left: primitives.sizes.xxs,
        right: primitives.sizes.m,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          title,
          style: primitives.typography.header,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
