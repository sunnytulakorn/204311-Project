import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hotel",
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text("Chiang Mai")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded), color: Colors.redAccent,),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg",
                  alignment: Alignment.center,
                  width: 980,
                  height: 500,)
              ],
            )),
            Expanded(child: Icon(Icons.ac_unit)),
          ],
        ),

      ),
    ),
  ));
}

