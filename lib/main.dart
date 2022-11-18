import 'package:flutter/material.dart';
// 각 페이지 다트 파일 import
import 'WomanPage.dart';
import 'BagPage.dart';
import 'KidsPage.dart';
import 'ShoesPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => StorePage(),
        '/WomanPage': (context) => WomanPage(),
        '/KidsPage': (context) => KidsPage(),
        '/BagPage': (context) => BagPage(),
        '/ShoesPage': (context) => ShoesPage(),
      },
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                //inkwell 위젯
                InkWell(
                  child:Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    //네비게이터
                    Navigator.of(context).pushNamed('/WomanPage');},
                ),
                Spacer(),
                InkWell(
                  child:Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.of(context).pushNamed('/KidsPage');},
                ),
                Spacer(),
                InkWell(
                  child:Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.of(context).pushNamed('/ShoesPage');},
                ),
                Spacer(),
                InkWell(
                  child:Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.of(context).pushNamed('/BagPage');
                    },
                ),
              ],
            ),),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
            SizedBox(height: 2),
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover)),
          ],
        ),
      )
    );
  }
}
