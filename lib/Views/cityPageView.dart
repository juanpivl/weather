import 'package:clima/classes/city_info.dart';
import 'package:clima/components/weatherDetailscomponent.dart';
import 'package:clima/components/weatherInfoComponent.dart';
import 'package:flutter/material.dart';

class CityPageView extends StatelessWidget {
  final List<CityInfo> cities;

  CityPageView({required this.cities});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: cities.length,
      itemBuilder: (context, index) {
        var city = cities[index];
        return Column(
          children: [
            Container(
              child: WeatherInfoComponent(
                city: city.city,
                time: city.time,
                temperature: city.temperature,
              ),
            ),
            SizedBox(height: 70),
            Expanded(
              child: Container(
                child: WeatherDetailsComponent(
                  sunriseTime: city.sunriseTime,
                  windSpeed: city.windSpeed,
                  temperature: city.temperature,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
