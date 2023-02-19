import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text("Über Google"),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("Store")
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text("Gmail"),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("Bilder"),
                      SizedBox(
                        width: 15.0,
                      ),
                      SvgPicture.asset(
                        'assets/dots.svg',
                        semanticsLabel: 'Google Apps',
                        color: Colors.grey[700],
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: ClipOval(
                              child: Image.network(
                                  "https://lh3.googleusercontent.com/a/AEdFTp56a4CQBxOuiwnz60HtIdmMY1eW-8dp656eoqz04A=s83-c-mo")),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 180, 0, 30),
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    focusColor: Colors.amber,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    labelText: "suche",
                    isDense: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          padding: EdgeInsets.all(17.0)),
                      onPressed: () => {},
                      child: Text(
                        "Google Suche",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(width: 15),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          padding: EdgeInsets.all(17.0)),
                      onPressed: () => {},
                      child: Text(
                        "Auf gut Glück!",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
