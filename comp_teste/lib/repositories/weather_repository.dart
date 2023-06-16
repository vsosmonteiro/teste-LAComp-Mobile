
import 'package:comp_teste/models/weather_model.dart';
import 'package:comp_teste/services/weather_service.dart';

abstract class WeatherRepository{
  static Future<WeatherModel> repoFetchWeather()async
  {
    Map<String,dynamic> response = await WeatherService.fetchWeather();
    WeatherModel weather= WeatherModel.fromJson(response);

    return weather;
  }

}
