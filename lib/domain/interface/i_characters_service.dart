import 'package:flutter/cupertino.dart';
import 'package:harry_poter_app/domain/characters/characters_model.dart';
import 'package:harry_poter_app/domain/spells/spells_model.dart';

abstract class ICharactersService {
  Future<List<dynamic>> getCharacters();
}
