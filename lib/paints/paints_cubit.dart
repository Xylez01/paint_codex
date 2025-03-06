import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_codex/paints/paint.dart';

import 'paints_repository.dart';

class PaintsCubit extends Cubit<List<Paint>> {
  PaintsCubit(PaintsRepository paintsRepository) : super(paintsRepository.paints);
}

class PaintsByManufacturerCubit extends Cubit<PaintsByManufacturer> {
  PaintsByManufacturerCubit(PaintsRepository paintsRepository) : super(paintsRepository.paints.groupedByManufacturer);
}
