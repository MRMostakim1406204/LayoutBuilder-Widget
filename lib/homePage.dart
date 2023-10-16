import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
        centerTitle: true,
      ),
      body: SafeArea(child: LayoutBuilder(builder: (context,constrain){
        final height = constrain.maxHeight;
        final width = constrain. maxWidth;
        if (width <600){
          return Column(
            children: [
              Text("It's a Mobile device",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text("width:- $width")
          ],);
        }
        else if (width <900 && width>600){
          return Column(
           children: [
            Text("It's a Teblet device",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("width:- $width")
           ],);
        }
        else {
          return Column(
            children: [
              Text("It's a Desktop/Web device",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text("width:- $width")
            ],
          );
        } 
      }
      ),),
    );
  }
}
