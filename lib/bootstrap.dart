import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/design_system/primitives.dart';
import 'package:paint_codex/paint_collection/paint_collection_cubit.dart';
import 'package:paint_codex/paint_collection/paint_collection_repository.dart';
import 'package:paint_codex/paints/paints_cubit.dart';
import 'package:paint_codex/paints/paints_repository.dart';

import 'persistent_storage.dart';

Future<Widget> bootstrap({required Widget child}) async {
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider.value(
        value: await PaintsRepository.create(),
      ),
      RepositoryProvider.value(
        value: await PaintCollectionRepository.create(
          buildStorage: ({required String key}) => PersistentStorage.create(key: key),
        ),
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider<PaintsCubit>(
          create: (context) => PaintsCubit(context.read()),
        ),
        BlocProvider<PaintsByManufacturerCubit>(
          create: (context) => PaintsByManufacturerCubit(context.read()),
        ),
        BlocProvider<PaintsCollectionCubit>(
          create: (context) => PaintsCollectionCubit(context.read(), context.read()),
        ),
      ],
      child: Primitives(
        child: child,
      ),
    ),
  );
}
