class MyMovieMemoirAPI{
  String requestName;
  String requestUrl;
  RequestType requestType;
  MyMovieMemoirAPI(String requestName,String requestUrl,RequestType requestType){
    this.requestName=requestName;
    this.requestUrl=requestUrl;
    this.requestType=requestType;
  }
  static MyMovieMemoirAPI getTrendByWeek=MyMovieMemoirAPI("getTrend", "https://api.themoviedb.org/3/trending", RequestType.GET);
}

enum RequestType{
  GET,POST
}