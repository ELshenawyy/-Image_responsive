import 'package:flutter/material.dart';

class Images3 extends StatelessWidget {
  void selectScreen(BuildContext ctx,n) {
    Navigator.of(ctx).pushReplacementNamed(
      n==1?'image2': 'feedback'

    );
  }
  const Images3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/photos/view.jpg",
                fit: BoxFit.cover,
                height: 420,
              ),
               Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 15),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black26,
                  child: InkWell(
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 30,
                    ),onTap: () => selectScreen(context,1),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 340),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black26,
                  child: InkWell(
                    child: const Icon(
                      Icons.star_border,
                      color: Colors.white,
                      size: 30,
                    ),
                    onTap: () => selectScreen(context,2),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 300, top: 20),
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis consectetur consequuntur deleniti earum enim esse, hic, inventore ipsum maiores modi nihil nobis pariatur quibusdam quisquam recusandae reiciendis temporibus unde vero."),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 300, top: 20),
                child: Text(
                  "Gallery",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/photos/palestine.jpg",
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/photos/egypt.jpg",
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                    Image.asset("assets/photos/Paris.jpg",
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/photos/china.jpg",
                      fit: BoxFit.fill,
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: 350,
                height: 70,
                splashColor: Colors.white,
                color: Colors.redAccent,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('Book now',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
