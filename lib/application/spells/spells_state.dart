part of 'spells_cubit.dart';

@freezed
class SpellsState with _$SpellsState {
  const factory SpellsState({
    required List<SpellsModel> spells,
    required bool isLoading,
    required bool isError,
    required String errorMessage,
  }) = _SpellsState;

  factory SpellsState.empty() => const SpellsState(
        spells: [],
        isLoading: false,
        isError: false,
        errorMessage: '',
      );
}
