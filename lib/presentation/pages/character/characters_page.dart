import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/pages/character/widget/characters_page_body.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: homeAppbar(),
        body: CharactersPageBody());
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
        "Characters",
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
