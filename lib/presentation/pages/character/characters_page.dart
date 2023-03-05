import 'package:flutter/material.dart';
import 'package:harry_poter_app/application/characters/characters_cubit.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const AppText(
              title: 'Characters',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: state.characters.length,
                  itemBuilder: (context, index) {
                    final character = state.characters[index];
                    return ListTile(
                      title: AppText(
                        title: character.name!,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      subtitle: AppText(
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
