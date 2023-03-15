import 'package:flutter/material.dart';
import 'package:image1/images1.dart';
import 'package:url_launcher/url_launcher.dart';


class LogIn extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return const Images1();
      }),
    );
  }



   LogIn({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('http://facebook.com');

  final Uri _url1 = Uri.parse('https://mobile.twitter.com');

  final Uri _url2 = Uri.parse('http://instagram.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0, left: 10),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 5, bottom: 30),
                child: Text(
                  "Please log in our app",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              const Text(
                "Email",
                style: TextStyle(fontSize: 18),
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black45),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password(6-14)",
                style: TextStyle(fontSize: 18),
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black45),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black26,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                width: 1700,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () =>selectScreen(context),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                    child: Text(
                      "-or-",
                      style: TextStyle(fontSize: 17),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    InkWell(
                      onTap: _launchUrl,
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/photos/facebook.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: _launchUrl1,
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/photos/twitter.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: _launchUrl2,
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/photos/insta.jfif",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }}


