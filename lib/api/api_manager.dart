import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/api/api_constants.dart';
import 'package:newsapp/api/endpoint.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/SourceResponse.dart';

//https://newsapi.org/v2/everything?q=bitcoin&apiKey=70f1415da2d34faa9521771f3201a0db
class ApiManager{
  static Future<SourceResponse?> getSources(categoryId)async{ //function btgeb al akhbar
    Uri url = Uri.https(ApiConstants.baseUrl,EndPoints.sourceApi,
        {'apiKey' : ApiConstants.apiKey,
          'category' : categoryId

        });

    try{ //el code hyshta8l lw al net tmam w wslt lel server lakn lw mafish net aw m3rftsh awsl lel server lazm a handle dh b try /catch
      var response = await http.get(url); // url object from uri
      //string => json => object
      var responseBody = response.body;  //string al body ely fl postman
      var json = jsonDecode(responseBody); //m3aya json
      return SourceResponse.fromJson(json); //object
    }
    catch(e){
      throw e ;
    }

  }

//https://newsapi.org/v2/everything?q=bitcoin&apiKey=70f1415da2d34faa9521771f3201a0db
  static Future<NewsResponse> getNewsBySourceId(String sourceId)async{
    Uri url=Uri.https(ApiConstants.baseUrl,EndPoints.newsApi,
        {
          'apiKey' :  ApiConstants.apiKey,
          'sources': sourceId
        });
    try{
      var response =  await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return NewsResponse.fromJson(json);
    }
    catch(e){
      throw e;
    }

  }

}