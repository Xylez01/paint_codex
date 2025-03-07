import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paint_codex/extensions/map_extensions.dart';
import 'package:paint_codex/paint_collection/paint_collection_repository.dart';
import 'package:paint_codex/paints/paint.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../paints/paints_repository.dart';

part 'add_paints_to_collection_cubit.freezed.dart';

@freezed
@immutable
abstract class AddPaintsToCollectionState with _$AddPaintsToCollectionState {
  const factory AddPaintsToCollectionState({
    required PaintsByManufacturer paintsByManufacturer,
    required List<PaintId> paintsInCollection,
  }) = _AddPaintsToCollectionState;
}

class AddPaintsToCollectionCubit extends Cubit<AddPaintsToCollectionState> {
  AddPaintsToCollectionCubit(this._paintsRepository, this._paintCollectionRepository)
      : super(
          AddPaintsToCollectionState(
            paintsByManufacturer: _paintsRepository.paints.groupedByManufacturer,
            paintsInCollection: _paintCollectionRepository.paintCollection.paints,
          ),
        ) {
    _searchController.stream.debounceTime(const Duration(milliseconds: 250)).listen(_filter);
  }

  final PaintsRepository _paintsRepository;
  final PaintCollectionRepository _paintCollectionRepository;
  final StreamController<String> _searchController = StreamController.broadcast();

  void search(String? input) {
    final query = input?.toLowerCase();

    if (query == null || query.isEmpty) {
      emit(
        state.copyWith(
          paintsByManufacturer: _paintsRepository.paints.groupedByManufacturer,
        ),
      );
    } else {
      _searchController.add(query);
    }
  }

  void toggle(PaintId paintId) {
    if (state.paintsInCollection.contains(paintId)) {
      _paintCollectionRepository.remove(paintId);
    } else {
      _paintCollectionRepository.add(paintId);
    }

    emit(state.copyWith(
      paintsInCollection: _paintCollectionRepository.paintCollection.paints,
    ));
  }

  void _filter(String query) {
    final paintsByManufacturer = _paintsRepository.paints.groupedByManufacturer;

    emit(
      state.copyWith(
        paintsByManufacturer: paintsByManufacturer
            .map(
              (manufacturer, paints) => MapEntry(
                manufacturer,
                paints.where((paint) {
                  final name = paint.name.toLowerCase();
                  final manufacturerId = paint.manufacturerId.id.toLowerCase();

                  return name.contains(query) || manufacturerId.contains(query);
                }).toList(growable: false),
              ),
            )
            .filter((_, paints) => paints.isNotEmpty),
      ),
    );
  }
}
