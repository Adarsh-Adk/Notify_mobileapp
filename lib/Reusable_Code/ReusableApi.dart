// import 'dart:convert';
// import 'package:http/http.dart'as http;
//
// class ReusableApi{
//   Future<List> fetchPhones(url)async{
//     final response=await http.get(url,headers: {"accept": "application/json"});
//     var convertDataToJson=jsonDecode(response.body);
//     return convertDataToJson;
//   }
// }

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ReusableApi{
  Future<List> fetchPhones(url)async{
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
      final response=await http.get(url,headers: {"accept": "application/json"});
      var jsonResponse=response.body;
      var decodedJson=json.decode(jsonResponse);
      file.writeAsStringSync(jsonResponse,flush: true,mode: FileMode.write);
      return decodedJson;
    }
  }
}
