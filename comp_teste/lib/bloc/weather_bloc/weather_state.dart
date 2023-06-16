import 'package:comp_teste/models/weather_model.dart';
import 'package:equatable/equatable.dart';

class WeatherState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class StateinitialWeather extends WeatherState {}

class StateLoadingWeather extends WeatherState {}

class StateLoadedWeather extends WeatherState {
  int weathercode;
  WeatherModel weather;

  StateLoadedWeather(this.weathercode,this.weather);

  @override // TODO: implement props
  List<Object?> get props => [weather,weathercode];
}

class StateErrorWeather extends WeatherState {
  final String? message;

  StateErrorWeather(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
