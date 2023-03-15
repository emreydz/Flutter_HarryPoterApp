import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter_app/application/characters/characters_cubit.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class CharactersPageBody extends StatelessWidget {
  const CharactersPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: state.characters.length,
                  itemBuilder: (context, index) {
                    final character = state.characters[index];
                    return ListTile(
                      title: CustomText(
                        title: character.name!,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      subtitle: CustomText(
                        title: character.house!,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(character.image!),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
