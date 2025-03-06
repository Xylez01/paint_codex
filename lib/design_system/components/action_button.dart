import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show FloatingActionButton;

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.onTap,
    required this.child,
    super.key,
  });

  // This is the normal height of a FAB
  static const double height = 56.0;

  final VoidCallback onTap;

  /// Typically an [Icon]
  final Widget child;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: onTap,
        shape: CircleBorder(),
        child: child,
      );
}
