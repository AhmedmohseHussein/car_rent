import 'package:car_rent/data/models/car_model.dart';
import 'package:car_rent/presentation/screens//onbording_page.dart';
import 'package:car_rent/presentation/screens/car_details.dart';
import 'package:car_rent/presentation/screens/cars_list_screen.dart';
import 'package:car_rent/presentation/screens/maps_details_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        home: MapDetailsScreen(
          car: Car(
              model: 'Fortuner GR',
              distance: 870,
              fuelCapacity: 50,
              pricePerHour: 45),
        ));
  }
}
