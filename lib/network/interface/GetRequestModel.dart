import 'package:my_movie_memoir_flutter/network/Api.dart';

abstract class GetRequestModel{
  MyMovieMemoirAPI getApi();
  Map<String,String> getParameter();
  List<String> getPathNames();
}