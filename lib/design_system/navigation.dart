import 'package:flutter/material.dart';

Future<T?> showScreen<T>(BuildContext context, {required Widget Function(BuildContext) builder}) async =>
    Navigator.of(context).push<T>(
      MaterialPageRoute(builder: builder),
    );
