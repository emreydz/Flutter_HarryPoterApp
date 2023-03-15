import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/pages/spells/widget/spells_page_body.dart';

class SpellsPage extends StatelessWidget {
  const SpellsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: homeAppbar(),
        body: SpellsPageBody());
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: Colors.amber,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
            height: 75,
            width: 75,
            child: Image.asset(
              "assets/images/HogwartsLogo.png",
              fit: BoxFit.cover,
            )),
      ),
      title: const Text(
        "Spells",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
    );
  }
}
