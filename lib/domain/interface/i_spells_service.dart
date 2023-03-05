import 'package:harry_poter_app/domain/spells/spells_model.dart';

abstract class ISpellsService {
  Future<List<SpellsModel>> getSpells();
}
