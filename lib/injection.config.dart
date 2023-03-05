// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:harry_poter_app/application/characters/characters_cubit.dart'
    as _i4;
import 'package:harry_poter_app/domain/interface/i_characters_service.dart'
    as _i5;
import 'package:harry_poter_app/domain/interface/i_spells_service.dart' as _i7;
import 'package:harry_poter_app/infrastructure/characters_repository/characters_service.dart'
    as _i6;
import 'package:harry_poter_app/infrastructure/core/injectable_module.dart'
    as _i9;
import 'package:harry_poter_app/infrastructure/spells_repository/spells_service.dart'
    as _i8;
import 'package:harry_poter_app/presentation/routes/router.dart' as _i3;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.singleton<_i3.AppRouter>(injectableModule.router);
    gh.lazySingleton<_i4.CharactersCubit>(() => _i4.CharactersCubit());
    gh.lazySingleton<_i5.ICharactersService>(() => _i6.CharactersService());
    gh.lazySingleton<_i7.ISpellsService>(() => _i8.SpellsService());
    return this;
  }
}

class _$InjectableModule extends _i9.InjectableModule {}
