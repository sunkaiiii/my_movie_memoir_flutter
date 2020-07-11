import 'package:flutter/cupertino.dart';
import 'package:my_movie_memoir_flutter/network/request/GetTrendRequest.dart';

class TrendLayout extends StatefulWidget{
  GetTrendRequest request;
  TrendLayout(GetTrendRequest request){
    this.request=request;
  }

  @override
  State<TrendLayout> createState() {
    return TrendLayoutState();
  }
}

class TrendLayoutState extends State<TrendLayout>{
  @override
  Widget build(BuildContext context) {
    return Text("123");
  }

}