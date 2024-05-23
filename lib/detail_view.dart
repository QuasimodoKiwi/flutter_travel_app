import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: show_detail(),
  ));
}

class show_detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ciudad de México, México',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/wallpaper.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Column(
                children: [
                  Image.asset("assets/ciudad_de_mexico.jpg"),
                  Text(
                    "Ciudad de México",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.cloud,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "4.5°C",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.airplanemode_active,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "7 hr 20 min",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              color: Colors.grey,
              child: Text(
                "History",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(children: [
                Text(
                  "Mexico City, city and capital of Mexico, synonymous with the Federal District (Distrito Federal; D.F.). The term Mexico City can also apply to the capital’s metropolitan area, which includes the Federal District but extends beyond it to the west, north, and east, where the state (estado) of México surrounds it on three sides. In contrast, the southern part of the Federal District sustains a limited population on its mountain slopes.",
                  style: GoogleFonts.macondo(
                    textStyle: TextStyle(fontSize: 30),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
