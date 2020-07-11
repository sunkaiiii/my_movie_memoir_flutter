import 'package:my_movie_memoir_flutter/network/interface/GetRequestModel.dart';

class GetTrendRequest extends GetRequestModel {
  String mediaType;
  String time;

  GetTrendRequest(String mediaType, String time) {
    this.mediaType = mediaType;
    this.time = time;
  }

  @override
  List<String> getParameter() {
    return [];
  }

  @override
  List<String> getPathNames() {
    return [mediaType, time];
  }
}
