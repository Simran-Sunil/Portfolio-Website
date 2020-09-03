import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "I am a flutter app developer and have an experience of 1 year in app development.I am currently doing my engineering in computer science.My hobbies are singing and reading novels.";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xff213A50), const Color(0xff071930)])),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 190,
                  height: 190,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('assets/profile_photo.jpeg'),
                      )),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Simran Sunil",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:90),
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Connect with me",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/Simran-Sunil");
                        },
                        child: Image.asset(
                          "assets/github.png",
                          width: 30,
                          height: 30,
                          color: Colors.white,
                        )),
                    SizedBox(width: 20),
                    Image.asset("assets/instagram.png",
                        width: 30, height: 30, color: Colors.white),
                    SizedBox(width: 20),
                    Image.asset("assets/facebook.png",
                        width: 30, height: 30, color: Colors.white),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                    const Color(0xffdc9202),
                    const Color(0xffd4af37),
                  ])),
                  child: Text(
                    "Download my Resume",
                    style: TextStyle(fontSize: 18, color: Color(0xff071930),fontWeight: FontWeight.w500),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
