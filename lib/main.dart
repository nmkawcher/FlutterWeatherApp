import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_demo/home_page.dart';
import 'package:weather_app_demo/weather_provider/weather_provider.dart';


void main() {
 // runApp(const MyApp());
  runApp(
    MultiProvider(providers: 
      [ChangeNotifierProvider(create: (context)=>WeatherProvider()),],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

