import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';
import 'package:harry_poter_app/presentation/pages/home/widget/school_card_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
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
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SchoolCardImage(
                      img: "assets/images/Gryffindor.png", title: "Gryffindor"),
                  SchoolCardImage(
                      img: "assets/images/slytherin.png", title: "Slytherin")
                ],
              ),
              Row(
                children: [
                  SchoolCardImage(
                      img: "assets/images/hufflepuff.png", title: "Hufflepuff"),
                  SchoolCardImage(
                    img: "assets/images/ravenclaw.png",
                    title: "Ravenclaw",
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
