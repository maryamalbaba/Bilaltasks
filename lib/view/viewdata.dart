import 'package:flutter/material.dart';
import 'package:quranapp/components/cardWidget.dart';
import 'package:quranapp/service/getService.dart';
import 'package:quranapp/model/suraModel.dart';

class viewdata extends StatelessWidget {
  viewdata({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getdata(),
      builder: (context, snapshot) {
         
        if (snapshot.hasData) {
           List<modelSura> temp = snapshot.data    as List<modelSura>;
          print("enter");
        
        
          return ListView.builder(
              itemCount: temp.length,
              itemBuilder: (context, index) {
                return cardWidget(suraname: temp[index].name);
              });
        } else {
          return Center(child: Text("error"));
        }
      },
    );
  }
}
