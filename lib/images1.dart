import 'package:flutter/material.dart';
import 'package:image1/images2.dart';

class Images1 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return const Images2();
      }),
    );
  }

  const Images1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 200,
                  left: 160,
                  right: 70,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    "assets/photos/images11.jpg",
                    fit: BoxFit.fill,
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 110,
                  left: 60,
                  right: 120,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(70), right: Radius.circular(70)),
                  child: Image.asset(
                    "assets/photos/images111.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 180,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          ),
          const Text(
            "Travel with ease.",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis consectetur consequuntur deleniti earum enim esse, hic, inventore ipsum maiores modi nihil nobis pariatur quibusdam quisquam recusandae reiciendis temporibus unde vero. ",
              style: TextStyle(color: Colors.black45),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MaterialButton(
            minWidth: 240,
            height: 70,
            splashColor: Colors.white,
            color: Colors.green,
            onPressed: () => selectScreen(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('Get Started',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
