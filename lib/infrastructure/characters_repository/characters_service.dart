import 'package:harry_poter_app/domain/characters/characters_model.dart';
import 'package:harry_poter_app/domain/interface/i_characters_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICharactersService)
class CharactersService implements ICharactersService {
  @override
  Future<List> getCharacters() async {
    final response =
        await Dio().get('https://hp-api.onrender.com/api/characters');
    return response.data;
  }
}
