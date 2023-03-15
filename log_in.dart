import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                  onPressed: () {},
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
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        "https://e7.pngegg.com/pngimages/540/7/png-clipart-eye-cartoon-character-youtube-channel-face-head.png",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        "https://e7.pngegg.com/pngimages/540/7/png-clipart-eye-cartoon-character-youtube-channel-face-head.png",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        "https://e7.pngegg.com/pngimages/540/7/png-clipart-eye-cartoon-character-youtube-channel-face-head.png",
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
}
