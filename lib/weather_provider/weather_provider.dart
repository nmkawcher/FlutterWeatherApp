import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_demo/model/weather_response.dart';

class WeatherProvider with ChangeNotifier{

  late MainWeatherResponse _mainWeatherResponse;

  MainWeatherResponse get getMainWeatherData=>_mainWeatherResponse;

  Future<void>getCurrentWeatherInfo()async{
    String url="https://api.openweathermap.org/data/2.5/weather?q=London&appid=82dc35357c5c8389a88f6936b87fc61d";
    final response=await http.get(Uri.parse(url));
    final myMap=jsonDecode(response.body);
    print(response.body);

    _mainWeatherResponse =  MainWeatherResponse.fromMap(myMap);
    notifyListeners();

  }

}