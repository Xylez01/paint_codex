import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/paints/paints_repository.dart';

Widget bootstrap({required Widget child}) => MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => PaintsRepository()),
      ],
      child: child,
    );
