import 'package:car_rent/data/models/car_model.dart';
import 'package:car_rent/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({
    super.key,
  });

  final List<Car> cars = [
    Car(
        model: 'Fortuner GR',
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    Car(
        model: 'Fortuner GR',
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    Car(
        model: 'Fortuner GR',
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    Car(
        model: 'Fortuner GR',
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your car'),
        foregroundColor: const Color(0xff2c2b34),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) => CarCard(car: cars[index]),
      ),
    );
  }
}
