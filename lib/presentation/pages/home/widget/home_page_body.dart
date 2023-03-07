import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/school_card_image.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SchoolCardImage(
                  ontap: () {
                    context.go(context.namedLocation("home"));
                  },
                  img: "assets/images/Gryffindor.png",
                  title: "Gryffindor"),
              SchoolCardImage(
                  ontap: () {
                    context.go(context.namedLocation("home"));
                  },
                  img: "assets/images/slytherin.png",
                  title: "Slytherin")
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SchoolCardImage(
                  ontap: () {
                    context.go(context.namedLocation("home"));
                  },
                  img: "assets/images/hufflepuff.png",
                  title: "Hufflepuff"),
              SchoolCardImage(
                ontap: () {
                  context.go(context.namedLocation("home"));
                },
                img: "assets/images/ravenclaw.png",
                title: "Ravenclaw",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
