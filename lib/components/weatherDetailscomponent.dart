import 'package:flutter/material.dart';

class WeatherDetailsComponent extends StatelessWidget {
  final String sunriseTime;
  final String windSpeed;
  final String temperature;

  WeatherDetailsComponent(
      {required this.sunriseTime,
      required this.windSpeed,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildWeatherDetail(Icons.sunny, 'Amanecer', sunriseTime),
        _buildWeatherDetail(Icons.wind_power, 'Viento', windSpeed),
        _buildWeatherDetail(Icons.hot_tub, 'Temperatura', temperature),
      ],
    );
  }

  Widget _buildWeatherDetail(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 20),
        Text(label),
        Text(value),
      ],
    );
  }
}
