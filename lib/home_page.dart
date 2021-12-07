import 'package:flutter/material.dart';

import 'current_weather.dart';
import 'forcast_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        bottom: const TabBar(
          tabs: [
            Text("Current Weather"),
            Text("Forcast Weather"),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          CurrentWeather(),
          ForcastWeather(),
        ],

      ),

    )
    );
  }
}
