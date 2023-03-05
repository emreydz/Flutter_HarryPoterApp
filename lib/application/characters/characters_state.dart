part of 'characters_cubit.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState({
    required List<CharactersModel> characters,
    required bool isLoading,
    required bool isError,
    required String errorMessage,
  }) = _CharactersState;

  factory CharactersState.empty() => const CharactersState(
        characters: [],
        isLoading: false,
        isError: false,
        errorMessage: '',
      );
}
