part of 'hause_cubit.dart';

@freezed
class HauseState with _$HauseState {
  const factory HauseState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required List<CharactersModel> hause,
  }) = _HauseState;

  factory HauseState.empty() => HauseState(
        isLoading: false,
        isError: false,
        errorMessage: '',
        hause: [],
      );
}
