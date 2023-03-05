import 'package:dio/dio.dart';
import 'package:harry_poter_app/domain/interface/i_spells_service.dart';
import 'package:harry_poter_app/domain/spells/spells_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISpellsService)
class SpellsService implements ISpellsService {
  @override
  Future<List<SpellsModel>> getSpells() async {
    final response = await Dio().get('https://hp-api.onrender.com/api/spells');
    return response.data;
  }
}
