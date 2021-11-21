import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MovieHomePage(),
      ),
    );
  }
}

/*Container(
                width: double.infinity,
                height: 230.0,
                child: ListWheelScrollView(
                  //scrollDirection: Axis.horizontal,
                  itemExtent: 250,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: MovieCard('1917', '8.3/10', 'images/film1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: MovieCard('Avengers: Endgame', '8.4/10', 'images/film2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: MovieCard('Room', '8.1/10', 'images/film3.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: MovieCard('Dune: Part One', '8.2/10', 'images/film4.jpg'),
                    ),
                  ],
                ),
              ),*/
//SizedBox(height: 25.0),

//SizedBox(height: 12.0),
/*Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Top Trends",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),*/
