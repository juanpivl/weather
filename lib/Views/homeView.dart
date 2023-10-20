import 'package:clima/Views/cityPageView.dart';
import 'package:clima/classes/city_info.dart';
import 'package:clima/services/cityService.dart';
import 'package:flutter/material.dart';
import 'package:clima/components/ads.dart';
import 'package:clima/components/changeDarkMode.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key});

  final CityService cityService = CityService();

  @override
  Widget build(BuildContext context) {
    List<CityInfo> cities = cityService.getCities();

    return Scaffold(
      body: Stack(
        children: [
          CityPageView(cities: cities),
          ChangeDarkModeComponent(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AdsComponent(),
          ),
        ],
      ),
    );
  }
}
