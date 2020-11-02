import 'package:flutter/material.dart';



class AvatarPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('URL'),// falta poner un enlace para una imagen
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ) 
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('URL'),
          placeholder:  AssetImage('assets/jar-loading.gif'),
          fadeInDuration:  Duration( milliseconds: 200),
        ),
      ),
    );
  }
}