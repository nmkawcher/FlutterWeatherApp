import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_demo/weather_provider/weather_provider.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  bool isLoading = true;

  @override
  void initState() {

    Provider.of<WeatherProvider>(context).getCurrentWeatherInfo().then((value) {
      setState(() {
        isLoading=false;
      });
    });
    super.initState();

  }
 

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(

      builder: (context, value, child) =>isLoading?Center(child: CircularProgressIndicator(),) :Center(
        child: 
            Container(
              height: 300,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${value.getMainWeatherData.main.temp }, ${value.getMainWeatherData.name} ${value.getMainWeatherData.weather[1]},${value.getMainWeatherData.timezone}")
            ),
        
        

    ),);

    /*Center(
      child: Text("Current Weather"),
    );*/
  }
}
