import 'package:flutter/cupertino.dart';
import 'package:my_movie_memoir_flutter/network/request/GetTrendRequest.dart';
import 'package:my_movie_memoir_flutter/widget/SearchWidget.dart';
import 'package:my_movie_memoir_flutter/widget/TrendLayout.dart';

class MainPage extends StatelessWidget{
  final trendingList=[GetTrendRequest("movie","week"),GetTrendRequest("tv","week"),GetTrendRequest("person","week")];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: CupertinoColors.extraLightBackgroundGray),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(largeTitle: const Text("MyMovieMemoir"),),
          SliverToBoxAdapter(
            child: Container(
              child: SearchWidget(hint: "search movie",margin: EdgeInsets.all(8.0),),
            ),
          ),
          SliverSafeArea(top: false,
          sliver: _getTrendingList(),)
        ],
      ),
    );
  }

  _getTrendingList(){
    return SliverList(
      delegate: SliverChildBuilderDelegate((context,index){
        return getTrendRow(index);
      },
      childCount: trendingList.length),
    );
  }

  getTrendRow(int index) {
    return TrendLayout(trendingList[index]);
  }
}