import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' show HSLColor;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/paints/paint.dart';

import 'paints_repository.dart';

class PaintsCubit extends Cubit<List<Paint>> {
  PaintsCubit(PaintsRepository paintsRepository) : super(paintsRepository.paints);
}

class PaintsByManufacturerCubit extends Cubit<PaintsByManufacturer> {
  PaintsByManufacturerCubit(this._paintsRepository) : super({}) {
    final paints = _paintsRepository.paints;

    final manufacturers = paints.map((paint) => paint.manufacturer).toSet();

    final paintsByManufacturer = {
      for (final manufacturer in manufacturers)
        manufacturer: paints
            .where((paint) => paint.manufacturer == manufacturer)
            .sortedBy<num>((paint) => HSLColor.fromColor(paint.color).hue)
            .toList(growable: false),
    };

    emit(paintsByManufacturer);
  }

  final PaintsRepository _paintsRepository;
}
