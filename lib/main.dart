import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(player());
}

class player extends StatelessWidget {
  const player({super.key});

  void tap(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded col(int hey,Color mycolor){
    return Expanded(
      child: Container(
        height: 50,
        width: 80,
        color: mycolor,
        child: InkWell(
          onTap: (){
            tap(hey);
          },) ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Xylophone")),
        ),
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
             col( 1,Colors.red),
            col( 2,Colors.orange),
            col( 3,Colors.yellowAccent),
            col( 4,Colors.greenAccent),
            col( 5,Colors.green),
            col( 6,Colors.blue),
            col( 7,Colors.purple),
          ],
        ),
      ),  // body:
      ),
    );
  }
}


