import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    home: sign_up(),
  ));
}

class sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/plane-flight-sky-view.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  height: 300,
                  padding: EdgeInsets.all(25),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 350,
                            child: Text(
                              "Enjoy every moment with us!",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.pacifico(
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),
                        SizedBox(
                          width: 200,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red)),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Create an account",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
