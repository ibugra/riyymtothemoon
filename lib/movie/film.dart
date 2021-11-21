import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'detail_movie_page.dart';
import 'home_page.dart';
import 'movie.dart';

class Film extends StatefulWidget {
  const Film({Key? key}) : super(key: key);

  @override
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  int currentIndex = 0;
  int activeIndex = 0;
  final images = [
    'images/1917.jpg',
    'images/endgame.jpg',
    'images/room.jpg',
    'images/dune.png'
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0x0D0C3EFF),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(51, 58, 76, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white38,
                      ),
                      onPressed: () {},
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.white38),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            leading: Icon(Icons.menu),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x0D0C3EFF), Colors.brown.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          /*AppBar(
            backgroundColor: Color.fromARGB(21, 28, 54, 255),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(51, 58, 76, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieHomePage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
            ],
          ),*/
          backgroundColor: Colors.black,
          //body: Film(),
          body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: ListView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 220,
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        ),
                        itemCount: continueWatching.length,
                        itemBuilder: (context, index, realIndex) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailMoviePage(
                                    continueWatching[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                //color: Colors.grey,
                                image: DecorationImage(
                                  image: AssetImage(
                                    continueWatching[index].imgPoster,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },

                        /*itemCount: images.length,
                        itemBuilder: (context, index, realIndex) {
                          final image = images[index];
                          return buildImage(image, index);
                        },*/
                      ),
                      buildIndicator(),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 40.0,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Chip(
                            label: Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Chip(
                            label: Text(
                              "Action",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Chip(
                            label: Text(
                              "Adventure",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Chip(
                            label: Text(
                              "Comedie",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Chip(
                            label: Text(
                              "Sci-Fi",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                movieListView(),

                /*Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MovieCard('1917', '8.3/10', 'images/film1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MovieCard(
                            'Avengers: Endgame', '8.4/10', 'images/film2.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MovieCard('Room', '8.1/10', 'images/film3.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: MovieCard(
                            'Dune: Part One', '8.2/10', 'images/film4.jpg'),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
          /*bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            iconSize: 27,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home Page',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Top',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: 'My Library',
                backgroundColor: Colors.blue,
              ),
            ],
          ),*/
        ),
      ),
    );
  }

  /*Widget MovieCard(String movieName, String rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(imgPath,
                fit: BoxFit.fill, width: 140.0, height: 170.0),
          ),
          SizedBox(height: 5.0),
          Text(
            movieName,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5.0),
          Text(
            rate,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )
        ],
      ),
    );
  }*/

  /*Widget buildImage(String image, int index) => InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            //color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      );*/

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: continueWatching.length,
        effect: const JumpingDotEffect(
          dotColor: Colors.white,
          activeDotColor: Colors.redAccent,
        ),
      );
}

class movieListView extends StatelessWidget {
  const movieListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: nowShowing.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMoviePage(
                    nowShowing[index],
                  ),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  width: 140,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        nowShowing[index].imgPoster,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  child: Text(
                    nowShowing[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
