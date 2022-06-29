// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/getLocation.dart';
import 'package:weather_app/weatherData.dart';
import 'package:weather_app/weatherModel.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  var client = WeatherData();
  var data;

  info() async {
    var position = await GetPosition();
    data = await client.getData('12.9044','77.5649');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: ((context, snapshot) {
        return Container(
            child: Column(
          children: [
            Container(
              height: size.height * 0.75,
              width: size.width,
              padding: EdgeInsets.only(top: 60),
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                  // ignore: prefer_const_literals_to_create_immutables
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff955cd1),
                        Color(0xff3fa2fa),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.2, 0.85])),
              child: Column(
                children: [
                  Text('${data?.cityName}',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 35,
                      )),
                  Text('Monday , 28 June',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Sunny',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                  Text('10º',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              '17.1 km/hr',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Wind',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
      }),
    ));
  }
}
