// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import '../main.dart';
//
// class ApiServiceProvider{
//   int pagenumber=pageNumber;
//
//   Future<List> fetchWPposts() async {
//     final response = await http.get(
//       // "https://notifytech.in/wp-json/wp/v2/posts?page=$pagenumber",
//         "https://notifytech.in/wp-json/wp/v2/posts?per_page=40",
//         headers: {"accept": "application/json"});
//     var convertDatatoJson = jsonDecode(response.body);
//     return convertDatatoJson;
//   }
// }


import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart'as http;
import 'package:path_provider/path_provider.dart';

class ApiServiceProvider{
  Future<List> fetchWPposts()async{

    String fileName="posts.json";

    var diretory= await getTemporaryDirectory();
    File file= File(diretory.path+"/"+fileName);
    if(file.existsSync()){
      print("loading from cache");
      var jsonData=file.readAsStringSync();
      var response=json.decode(jsonData);
      return response;

    }
    else{
      print("loading from network");
      var url="https://notifytech.in/wp-json/wp/v2/posts?per_page=40";
      final response=await http.get(url,headers: {"accept": "application/json"});
      var jsonResponse=response.body;
      var decodedJson=json.decode(jsonResponse);
      file.writeAsStringSync(jsonResponse,flush: true,mode: FileMode.write);
      return decodedJson;
    }


  }
}