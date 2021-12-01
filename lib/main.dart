import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Animate_Align());
  }
}

class Animate_Align extends StatefulWidget {
  //const Animate_Align({Key key}) : super(key: key);

  @override
  _Animate_AlignState createState() => _Animate_AlignState();
}

class _Animate_AlignState extends State<Animate_Align> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/background2.jpg"),
              fit: BoxFit.fill,
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 1.12,
                      width: MediaQuery.of(context).size.width / 1.12,
                      color: Colors.white.withOpacity(0.6),
                      child: AnimatedAlign(
                        alignment: selected
                            ? Alignment.topRight
                            : Alignment.bottomLeft,
                        curve: Curves.fastOutSlowIn,
                        duration: Duration(seconds: 3),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("images/redbird.png"),
                          )),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
