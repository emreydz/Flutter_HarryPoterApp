import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spells_state.dart';
part 'spells_cubit.freezed.dart';

class SpellsCubit extends Cubit<SpellsState> {
  SpellsCubit() : super(SpellsState.initial());
}
