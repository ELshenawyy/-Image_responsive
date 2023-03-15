import 'package:flutter/material.dart';
import 'package:image1/custom_circle_image.dart';

class FeedBack extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const FeedBack();
    }));
  }

  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(children: [
        Column(
          children: [
            ClipRRect(
              child: Image.asset(
                "assets/photos/logo.png",
                fit: BoxFit.fill,
                height: 450,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Your FeedBack",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Give your best time for this moment",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      minLines: 1,
                      maxLength: 50,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.3, color: Colors.black45),
                        ),
                        hintText: "Enter your feedback...",
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    elevation: 10,
                    splashColor: Colors.white10,
                    minWidth: 120,
                    height: 50,
                    onPressed: () {},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text('send',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      drawer: Drawer(
        shape: Border.all(color: Colors.grey),
        backgroundColor: Colors.white54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleImage(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Ragner Lothbrock",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const TextField(
              readOnly: true,
              decoration: InputDecoration(
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.home_filled, size: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.person_search, size: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () => selectScreen(context),
                splashColor: Colors.grey,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white54,
                            child: Icon(
                              Icons.question_mark_rounded,
                              size: 28,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "FeedBack",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.people,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Invite Friends",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.share,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Rate the app",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(14),
                        bottomEnd: Radius.circular(14)),
                    backgroundBlendMode: BlendMode.multiply,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.favorite_sharp,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const TextField(
              readOnly: true,
              decoration: InputDecoration(
                enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sign Out",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop("Have a good day");
                      },
                      child: const Icon(
                        Icons.power_settings_new,
                        size: 32,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
