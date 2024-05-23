import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatelessWidget {
  List areaNames = [
    Text('Perpignan'),
    Text('Xai-Xai'),
    Text('Ostrava'),
    Text('Zürich'),
    Text('Ciudad de Mexico'),
  ];
  List area_names_locations = [
    Text('Perpignan, France'),
    Text('Xai-Xai, Mozambique'),
    Text('Ostrava, Czech Republic'),
    Text('Zürich, Switzerland'),
    Text('Ciudad de Mexico, Mexico'),
  ];
  List area_images = [
    Image.asset('assets/perpignan.jpg'),
    Image.asset('assets/xai_xai.jpg'),
    Image.asset('assets/ostrava.jpg'),
    Image.asset('assets/zürich.jpg'),
    Image.asset('assets/ciudad_de_mexico.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blueAccent, Colors.white]
            )
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: GoogleFonts.pacifico(textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    color: Colors.black
                  ),
                  ),
                ),
                Text(
                  "You're in the United States",
                  style: GoogleFonts.oldenburg(textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  )
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/female_model.jpg'),
            ),
          ],
        ),
      ),
      body:
      Stack(
        children: [
          Image.asset("assets/wallpaper.jpg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                height: 100,
                width: 300,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Text("Search your next destination.", style: TextStyle(
                        fontSize: 20
                      ),
                      ),
                    ),
                    Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For you",
                    style: GoogleFonts.voltaire(textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.voltaire(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
                width: 500,
                child: ListView.builder(
                  itemCount: area_names_locations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.blueAccent, Colors.lightBlueAccent]
                              )
                            ),
                            child: ListTile(
                              leading: ClipRect(
                                child: area_images[index],
                              ),
                              title: areaNames[index],
                              subtitle: area_names_locations[index],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
            ),
          ],
        ),]
      ),
    );
  }
}
