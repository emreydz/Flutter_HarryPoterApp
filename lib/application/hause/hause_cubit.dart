import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harry_poter_app/domain/characters/characters_model.dart';
import 'package:harry_poter_app/domain/interface/i_characters_service.dart';
import 'package:harry_poter_app/injection.dart';
import 'package:injectable/injectable.dart';

part 'hause_state.dart';
part 'hause_cubit.freezed.dart';

@lazySingleton
class HauseCubit extends Cubit<HauseState> {
  late final ICharactersService _charactersHauseService;
  final String hause;
  HauseCubit(this.hause) : super(HauseState.empty()) {
    _charactersHauseService = getIt<ICharactersService>();

    GetHauseData(hause);
  }

  Future<void> GetHauseData(String hause) async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      hause: [],
      isError: true,
    ));

    emit(state.copyWith(
      errorMessage: 'Error',
    ));

    final result = await _charactersHauseService.getHause(hause);

    final temporaryList = [
      ...state.hause,
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
      hause: temporaryList,
      isLoading: false,
    ));
  }
}
