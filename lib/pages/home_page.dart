import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_ui6/Animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    bool _isLogin=false;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.6),
            ]),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                FadeAnimation(1,Text(
                  "Find the best parties near you.",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),),
                SizedBox(height: 30,),
                FadeAnimation(1.2,  Text(
                  "Let us find you a tutorial for your interest",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),),
                SizedBox(height: 450,),
                _isLogin?
                    FadeAnimation(1.3,  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Start",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
               :
                FadeAnimation(1.5, Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Google+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
