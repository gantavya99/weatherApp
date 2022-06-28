import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Container(
          height: size.height * 0.75,
          width:size.width,
          padding:EdgeInsets.only(top:60),
          margin:EdgeInsets.only(right:10,left:10),
          decoration: BoxDecoration(
            color:Colors.red,
            borderRadius:BorderRadius.circular(40),
            gradient: LinearGradient(colors: [
              Color(0xff955cd1),
              Color(0xff3fa2fa),
            ],
            begin:Alignment.bottomCenter,
            end:Alignment.topCenter,
            stops:[0.2,0.85]
            )
          ),
          child: Column(
            children: [
              Text('Constantine',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                  )),
                  Text('Monday , 28 June',
                  style:TextStyle(
                    color:Colors.white.withOpacity(0.9),
                    fontSize:20,
                  ))
            ],
          ),
        )
      ],
    )));
  }
}
