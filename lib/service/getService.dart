import 'package:dio/dio.dart';
import 'package:quranapp/model/suraModel.dart';

Future<List<modelSura>> getdata()async
{
  print("object");
Dio dio=Dio();
Response response=await  dio.get("http://api.alquran.cloud/v1/quran/quran-uthmani",   options: getOption(),);

print(response.data);
List<modelSura>List_of_sura=List.generate(response.data["data"].length,
 (index) => modelSura.fromMap(response.data["data"]["surahs"][index]));
print("service");
return List_of_sura;
}


getOption({bool useToken = true}) {
  if (useToken) {
    return Options(headers: {
      "apikey":
         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml5aWRlY21keWhpdmRxampkY3p4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNjIyMDIsImV4cCI6MjAxNTczODIwMn0.-SSo8FqwiGpWdaQ0TdCikiQY374vE0BT1EzYk90pYRg",
        // "Token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1ZGpxd3NqYmNhZWpxd3pzZXRnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg5NzEyMjIsImV4cCI6MjAyNDU0NzIyMn0.X17__llMYo6FADKf-nKDaeRzodXBSfYxbK4AhEqghNA", 
    });
  } else {
    return null;
  }
}