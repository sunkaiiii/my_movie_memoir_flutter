import 'package:my_movie_memoir_flutter/network/Api.dart';
import 'package:my_movie_memoir_flutter/network/ApiKeys.dart';
import 'package:my_movie_memoir_flutter/network/interface/GetRequestModel.dart';

class GetTrendRequest extends GetRequestModel {
  String mediaType;
  String time;


  GetTrendRequest(String mediaType, String time) {
    this.mediaType = mediaType;
    this.time = time;
  }

  @override
  Map<String,String> getParameter() {
    return {"api_key":API_KEY};
  }

  @override
  List<String> getPathNames() {
    return [mediaType, time];
  }

  @override
  MyMovieMemoirAPI getApi() {
    return MyMovieMemoirAPI.getTrendByWeek;
  }
}
