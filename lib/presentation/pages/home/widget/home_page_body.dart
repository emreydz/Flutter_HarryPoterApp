import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/school_card_image.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SchoolCardImage(
                  ontap: () {
                    context.go(context.namedLocation("gryffindor"));
                  },
                  img: "assets/images/Gryffindor.png",
                  title: "Gryffindor"),
              SchoolCardImage(
                  ontap: () {
                    context.go(context.namedLocation("slytherin"));
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
                    context.go(context.namedLocation("hufflepuff"));
                  },
                  img: "assets/images/hufflepuff.png",
                  title: "Hufflepuff"),
              SchoolCardImage(
                ontap: () {
                  context.go(context.namedLocation("ravenclaw"));
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
