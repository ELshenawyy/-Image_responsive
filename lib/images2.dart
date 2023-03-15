import 'package:flutter/material.dart';
import 'package:image1/images3.dart';

class Images2 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
     'image3',
    );
  }

  const Images2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://e7.pngegg.com/pngimages/540/7/png-clipart-eye-cartoon-character-youtube-channel-face-head.png"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 60.0, right: 20, left: 60, bottom: 10),
              child: Text(
                "Where do you want to go?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 39),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recommended",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.linear_scale,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(children: [
                      Image.asset(
                        "assets/photos/palestine.jpg",
                        fit: BoxFit.fill,
                        width: 250,
                        height: 250,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 188.0, left: 15),
                        child: Text(
                          "al-quds",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 210.0, left: 15),
                        child: Text(
                          "palestine",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Image.asset(
                        "assets/photos/egypt.jpg",
                        fit: BoxFit.fill,
                        width: 250,
                        height: 250,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 188.0, left: 15),
                        child: Text(
                          "Cairo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 210.0, left: 15),
                        child: Text(
                          "Egypt",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Image.asset(
                        "assets/photos/Paris.jpg",
                        fit: BoxFit.fill,
                        width: 250,
                        height: 250,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 188.0, left: 15),
                        child: Text(
                          "Paris",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 210.0, left: 15),
                        child: Text(
                          "France",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Trending this month",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.linear_scale,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/photos/china.jpg",
                    fit: BoxFit.fill,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "China",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Stack(children: [
                    Image.asset(
                      "assets/photos/dubai.jpeg",
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: InkWell(
                        child: Container(
                          color: Colors.black26,
                          width: 80,
                          height: 75,
                          child: const Center(
                              child: Text(
                            "+7",
                            style: TextStyle(fontSize: 25),
                          )),
                        ),
                        onTap: () => selectScreen(context),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Dubai",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
