import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter_app/application/spells/spells_cubit.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class SpellsPageBody extends StatelessWidget {
  const SpellsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpellsCubit, SpellsState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: state.spells.length,
                  itemBuilder: (context, index) {
                    final spell = state.spells[index];
                    return ListTile(
                      title: CustomText(
                        title: spell.name!,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      subtitle: CustomText(
                        title: spell.description!,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
