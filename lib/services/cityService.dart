import 'package:clima/classes/city_info.dart';

class CityService {
  List<CityInfo> getCities() {
    return [
      CityInfo(
          city: 'Hermosillo',
          time: 'Lunes 8:00 AM',
          temperature: '22ºC',
          sunriseTime: '7:00',
          windSpeed: '4m/s'),
      CityInfo(
          city: 'Hermosillodsa',
          time: 'Lunes 8:00 AM',
          temperature: '22ºC',
          sunriseTime: '7:00',
          windSpeed: '4m/s'),
    ];
  }
}
