import 'package:flutter/cupertino.dart';
import 'package:my_movie_memoir_flutter/network/RequestHelper.dart';
import 'package:my_movie_memoir_flutter/network/request/GetTrendRequest.dart';
import 'package:my_movie_memoir_flutter/network/response/GetTrendingResponse.dart';
import 'package:my_movie_memoir_flutter/widget/MovieItemView.dart';
import 'package:http/http.dart' as http;

class TrendLayout extends StatefulWidget {
  GetTrendRequest request;

  TrendLayout(GetTrendRequest request) {
    this.request = request;
  }

  @override
  State<TrendLayout> createState() {
    return TrendLayoutState(request);
  }
}

class TrendLayoutState extends State<TrendLayout> {
  bool isLoaded = false;
  GetTrendingResponse response;
  GetTrendRequest request;

  TrendLayoutState(this.request) {}

  @override
  void initState() {
    super.initState();
    loadData(request);
  }

  Widget getBody() {
    if (!isLoaded) {
      return Center(
        child: CupertinoActivityIndicator(),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MovieItemView(response.results[index]);
        },
        scrollDirection: Axis.horizontal,
        itemCount: response.results.length,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Future<void> loadData(GetTrendRequest request) async {
    var trendResult = await requestHttp(request);
    GetTrendingResponse response = GetTrendingResponse.fromJson(trendResult);
    setState(() {
      this.response = response;
      isLoaded = true;
    });
  }
}
