import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harry_poter_app/domain/interface/i_characters_service.dart';
import 'package:harry_poter_app/domain/interface/i_spells_service.dart';
import 'package:harry_poter_app/domain/spells/spells_model.dart';
import 'package:harry_poter_app/injection.dart';
import 'package:injectable/injectable.dart';

part 'spells_state.dart';
part 'spells_cubit.freezed.dart';

@lazySingleton
class SpellsCubit extends Cubit<SpellsState> {
  late final ISpellsService _spellsService;
  SpellsCubit() : super(SpellsState.empty()) {
    _spellsService = getIt<ISpellsService>();

    GetSpellsData();
  }

  Future<void> GetSpellsData() async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      spells: [],
      isError: true,
    ));

    emit(state.copyWith(
      errorMessage: 'Error',
    ));

    final result = await _spellsService.getSpells();

    final temporaryList = [
      ...state.spells,
    ];

    temporaryList.addAll(result.map(
      (data) => SpellsModel(
        id: data["id"],
        name: data["name"],
        description: data["description"],
      ),
    ));

    emit(state.copyWith(
      spells: temporaryList,
      isLoading: false,
    ));
  }
}
