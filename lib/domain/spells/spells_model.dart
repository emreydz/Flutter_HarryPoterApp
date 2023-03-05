import 'package:freezed_annotation/freezed_annotation.dart';

part 'spells_model.freezed.dart';

@freezed
class SpellsModel with _$SpellsModel {
  const factory SpellsModel({
    String? id,
    String? name,
    String? description,
  }) = _SpellsModel;
}
