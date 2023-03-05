import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_model.freezed.dart';

@freezed
class CharactersModel with _$CharactersModel {
  const factory CharactersModel({
    String? id,
    String? name,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    bool? alive,
    String? image,
  }) = _CharactersModel;
}
