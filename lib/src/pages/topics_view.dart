import 'package:flutter/material.dart';

import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/animals_view.dart';
import 'package:stay_connected/src/pages/art_view.dart';
import 'package:stay_connected/src/pages/beauty_view.dart';
import 'package:stay_connected/src/pages/books_view.dart';

import 'package:stay_connected/src/pages/cooking_view.dart';
import 'package:stay_connected/src/pages/games_view.dart';
import 'package:stay_connected/src/pages/movies_tv_view.dart';
import 'package:stay_connected/src/pages/music_view.dart';
import 'package:stay_connected/src/pages/sports_view.dart';
import 'package:stay_connected/src/pages/welcome_view.dart';

class TopicsView extends StatefulWidget {
  @override
  _TopicsViewState createState() => _TopicsViewState();
}

class _TopicsViewState extends State<TopicsView> {
  FlatButton addTopic(
      String topicName, Widget navigation, String imageAddress) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.0,
          color: Colors.blue,
        ),
      ),
      highlightColor: Colors.blue,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigation,
          ),
        );
      },
      child: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 0.5,
              child: Image.network(imageAddress),
            ),
          ),
          Center(
            child: Text(
              topicName,
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeView(),
                ),
              );
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            "Choose a Topic",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Builder(
          builder: (context) => SizedBox(
            width: _width,
            height: _height,
            child: Column(
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      AddTopic(
                          'Animals',
                          AnimalsView(),
                          'https://lh3.googleusercontent.com/9alLmIWwWkzfP-q-z08Ob41138rgK-ptBfqCqBoFyh4mphKfw1pEFuJOQKH5ksKhQlQUIlct1g=w640-h400-e365-rj-sc0x00ffffff',
                          false),
                      AddTopic(
                          'Art',
                          ArtView(),
                          'https://s3-eu-west-1.amazonaws.com/wbm.thumbnail/dissolve/1200/941126.jpg',
                          false),
                      AddTopic(
                          'Beauty',
                          BeautyView(),
                          'https://post.healthline.com/wp-content/uploads/2020/04/makeup_composition_overhead-1200x628-facebook-1200x628.jpg',
                          false),
                      AddTopic(
                          'Books',
                          BooksView(),
                          'https://www.rd.com/wp-content/uploads/2017/10/This-Is-How-Long-It-Takes-To-Read-The-Whole-Dictionary_509582812-Billion-Photos_FB-e1574101045824.jpg',
                          false),
                      AddTopic(
                          'Cooking',
                          CookingView(),
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWYrBDnEtKo-YEIHoXp-pQwuuAq4-kAFiHVw&usqp=CAU',
                          false),
                      AddTopic(
                          'Games',
                          GamesView(),
                          'https://i.pcmag.com/imagery/articles/00n0I7NojThD7LNdz31s0jH-8.fit_scale.size_1050x591.v1569486931.jpg',
                          false),
                      AddTopic(
                          'General',
                          null,
                          'https://proofthatblog.com/wp-content/uploads/2013/06/question-mark.jpg',
                          true),
                      AddTopic(
                          'Movies/TV',
                          MoviesTVView(),
                          'https://cdn3.movieweb.com/i/article/M4dH9tdBE4BmfPWnS3RerbK8sOOqMA/1200:100/Disney-Plus-Launch-Movies-Tv-Shows-Full-List.jpg',
                          false),
                      AddTopic(
                          'Music',
                          MusicView(),
                          'https://cnet1.cbsistatic.com/img/FaRwLPEhtWImd3ABytDiyJz7HQM=/1200x630/2020/06/16/91844037-74e7-4ed8-a9cb-22fad4d8a7ce/beats-solo3-club-collection.jpg',
                          false),
                      AddTopic(
                          'Sports',
                          SportsView(),
                          'https://media.npr.org/assets/img/2020/06/10/gettyimages-200199027-001-b5fb3d8d8469ab744d9e97706fa67bc5c0e4fa40.jpg',
                          false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
