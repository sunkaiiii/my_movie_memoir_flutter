import 'dart:convert';
import 'dart:developer';

import 'package:my_movie_memoir_flutter/network/interface/GetRequestModel.dart';
import 'package:http/http.dart' as http;
Future<Map<String,dynamic >> requestHttp(GetRequestModel model) async{
  var client = http.Client();
  var api = model.getApi();
  var requestUrlBuffer = StringBuffer();
  requestUrlBuffer.write(api.requestUrl);
  model.getPathNames().forEach((element) {
    requestUrlBuffer.write("/");
    requestUrlBuffer.write(element);
  });
  if(model.getParameter().length>0){
    var i =0;
    model.getParameter().forEach((key, value) {
      if(i++==0)
        requestUrlBuffer.write("?");
      else
        requestUrlBuffer.write("&");
      requestUrlBuffer.write(key);
      requestUrlBuffer.write("=");
      requestUrlBuffer.write(value);
    });
  }
  final requestUrl = requestUrlBuffer.toString();
  log(requestUrl);
  var result = await client.get(requestUrl);
  return json.decode(result.body);
}