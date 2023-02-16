import 'package:flutter/material.dart';
import 'package:nne/model/model_movie.dart';
import 'package:nne/widget/carousel.slider.dart';

import '../widget/circle_slider.dart';
import '../widget/square_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'movie1.png',
      'like': true
    }),
    Movie.fromMap({
      'title': '사랑의 1',
      'keyword': '1/로맨스/판타지',
      'poster': 'movie1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 2',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'movie1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 3',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'movie1.png',
      'like': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        SquareSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/images/bbongflix_logo.png",
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "TV 프로그램",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "영화",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "내가 찜한 콘텐츠",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
