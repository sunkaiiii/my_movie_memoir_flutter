import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_memoir_flutter/widget/BottomTabView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'MyMovieMemoir',
        home:BottomTabView()
    );
  }

}

