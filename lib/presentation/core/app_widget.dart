import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter_app/application/characters/characters_cubit.dart';
import 'package:harry_poter_app/application/spells/spells_cubit.dart';
import 'package:harry_poter_app/injection.dart';
import 'package:harry_poter_app/presentation/pages/spells/spells_page.dart';
import 'package:harry_poter_app/presentation/routes/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter _router = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<CharactersCubit>()),
        BlocProvider(create: (context) => getIt<SpellsCubit>()),
      ],
      child: MaterialApp.router(
        title: 'Harry Potter App',
        debugShowCheckedModeBanner: false,
        routerConfig: _router.router,
      ),
    );
  }
}
