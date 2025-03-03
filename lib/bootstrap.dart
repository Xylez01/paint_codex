import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/design_system/primitives.dart';
import 'package:paint_codex/paint_collection/paint_collection_repository.dart';
import 'package:paint_codex/paints/paints_repository.dart';

import 'persistent_storage.dart';

Future<Widget> bootstrap({required Widget child}) async {
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider.value(value: PaintsRepository()),
      RepositoryProvider.value(
        value: await PaintCollectionRepository.create(
          buildStorage: ({required String key}) => PersistentStorage.create(key: key),
        ),
      ),
    ],
    child: Primitives(
      child: child,
    ),
  );
}
