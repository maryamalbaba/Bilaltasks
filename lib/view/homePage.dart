import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quranapp/view/viewdata.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  shadowColor:Color.fromARGB(255, 85, 95, 100),
      //  shape: Border.all(width: 1),
      leading: Icon(Icons.menu),
        centerTitle: true,
        elevation:100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
        title: Text(
          "القرآن الكريم",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 86, 156, 165),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(image: AssetImage("asset/quran.jpg"))),
            ),
          ),
          viewdata(),
        ],
      ),
    );
  }
}
