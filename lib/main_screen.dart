import 'package:very_good_analysis/very_good_analysis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: const [
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
                      const Text("Gmail"),
                      const SizedBox(
                        width: 15.0,
                      ),
                      const Text("Bilder"),
                      const SizedBox(
                        width: 15.0,
                      ),
                      SvgPicture.asset('assets/dots.svg',
                          semanticsLabel: 'Google Apps',
                          colorFilter:
                              ColorFilter.mode(Colors.grey, BlendMode.srcIn)),
                      const SizedBox(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
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
                          backgroundColor: Colors.grey[200],
                          padding: EdgeInsets.all(17.0)),
                      onPressed: () => {},
                      child: const Text(
                        "Google Suche",
                        style: TextStyle(color: Colors.black),
                      )),
                  const SizedBox(width: 15),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          padding: EdgeInsets.all(17.0)),
                      onPressed: () => {},
                      child: const Text(
                        "Auf gut Glück!",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            )
          ]),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: const Text("Deutschland"),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                    child: const SizedBox(
                      height: 1.0,
                      width: 1000000,
                      child: ColoredBox(color: Colors.grey),
                    ),
                  ),
                ),
              ]),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/blatt.png",
                        width: 12.5,
                      ),
                    ),
                    Text("CO₂-neutral seit 2007"),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: const [
                        Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Text("Werbeprogramme"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Text("Unternehmen"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Text("Wie funktioniert die Google Suche?"),
                        )
                      ]),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(17.0),
                            child: Text("Datenschutzerklärung"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(17.0),
                            child: Text("Nutzungsbedingungen"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(17.0),
                            child: Text("Einstellungen"),
                          )
                        ],
                      )
                    ]),
              ]),
            ],
          ),
        )
      ]),
    );
  }
}
