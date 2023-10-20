import 'package:flutter/material.dart';

class WeatherInfoComponent extends StatelessWidget {
  final String city;
  final String time;
  final String temperature;

  WeatherInfoComponent(
      {required this.city, required this.time, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            city,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            time,
            style: TextStyle(fontSize: 20),
          ),
          Image(
            image: AssetImage('assets/nube.png'),
            width: 200,
            height: 250,
          ),
          Text(
            temperature,
            style: TextStyle(fontSize: 30),
          ),
          Text('Buenos días'),
        ],
      ),
    );
  }
}
