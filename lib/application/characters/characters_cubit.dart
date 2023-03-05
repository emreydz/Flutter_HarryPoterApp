import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harry_poter_app/domain/characters/characters_model.dart';
import 'package:harry_poter_app/domain/interface/i_characters_service.dart';
import 'package:harry_poter_app/injection.dart';
import 'package:injectable/injectable.dart';

part 'characters_state.dart';
part 'characters_cubit.freezed.dart';

@lazySingleton
class CharactersCubit extends Cubit<CharactersState> {
  late final ICharactersService _charactersService;

  CharactersCubit() : super(CharactersState.empty()) {
    _charactersService = getIt<ICharactersService>();

    GetCharactersData();
  }

  Future<void> GetCharactersData() async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      characters: [],
      isError: true,
    ));

    emit(state.copyWith(
      errorMessage: 'Error',
    ));

    final result = await _charactersService.getCharacters();

    final temporaryList = [
      ...state.characters,
    ];

    temporaryList.addAll(result.map(
      (data) => CharactersModel(
        name: data['name'],
        house: data["house"],
        image: data["image"],
        species: data["species"],
        patronus: data["patronus"],
        gender: data["gender"],
        dateOfBirth: data["dateOfBirth"],
        yearOfBirth: data["yearOfBirth"],
        ancestry: data["ancestry"],
        eyeColour: data["eyeColour"],
        hairColour: data["hairColour"],
        hogwartsStudent: data["hogwartsStudent"],
        hogwartsStaff: data["hogwartsStaff"],
        actor: data["actor"],
        alive: data["alive"],
      ),
    ));

    emit(state.copyWith(
      characters: temporaryList,
      isLoading: false,
      isError: false,
    ));
  }
}
