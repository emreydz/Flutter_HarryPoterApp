import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';
import 'package:harry_poter_app/presentation/pages/character/characters_page.dart';
import 'package:harry_poter_app/presentation/pages/spells/spells_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                  child: SizedBox(
                child: Image.asset("assets/images/harrypotter.jpg",
                    fit: BoxFit.cover),
              )),
              Tab(
                  child: SizedBox(
                child: Image.asset("assets/images/landing.webp",
                    fit: BoxFit.cover),
              )),
            ],
          ),
        ),
        body: const TabBarView(
          children: [CharactersPage(), SpellsPage()],
        ),
      ),
    );
  }
}
