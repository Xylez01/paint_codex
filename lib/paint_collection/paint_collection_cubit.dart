import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paint_codex/paint_collection/paint_collection_repository.dart';
import 'package:paint_codex/paints/paint.dart';

import '../paints/paints_repository.dart';

part 'paint_collection_cubit.freezed.dart';

@freezed
@immutable
abstract class PaintCollectionState with _$PaintCollectionState {
  const factory PaintCollectionState({
    required List<Paint> paints,
    required PaintsByManufacturer paintsByManufacturer,
  }) = _PaintCollectionState;

  factory PaintCollectionState.fromState({
    required PaintCollectionRepository paintCollectionRepository,
    required PaintsRepository paintsRepository,
  }) {
    final collection = paintCollectionRepository.paintCollection;

    final paints = collection.paints
        .map((paintId) => paintsRepository.paints.singleWhereOrNull((paint) => paint.id == paintId))
        .nonNulls
        .toList(growable: false);

    return PaintCollectionState(
      paints: paints,
      paintsByManufacturer: paints.groupedByManufacturer,
    );
  }
}

class PaintsCollectionCubit extends Cubit<PaintCollectionState> {
  PaintsCollectionCubit(this._paintsRepository, this._paintCollectionRepository)
      : super(
          PaintCollectionState.fromState(
            paintCollectionRepository: _paintCollectionRepository,
            paintsRepository: _paintsRepository,
          ),
        ) {
    _paintCollectionRepository.addListener(_onCollectionUpdated);
  }

  final PaintsRepository _paintsRepository;
  final PaintCollectionRepository _paintCollectionRepository;

  void _onCollectionUpdated() => emit(
        PaintCollectionState.fromState(
          paintCollectionRepository: _paintCollectionRepository,
          paintsRepository: _paintsRepository,
        ),
      );

  @override
  Future<void> close() {
    _paintCollectionRepository.removeListener(_onCollectionUpdated);
    return super.close();
  }
}
