import 'package:car_rent/data/models/car_model.dart';
import 'package:car_rent/presentation/screens/maps_details_screen.dart';
import 'package:car_rent/presentation/widgets/car_card.dart';
import 'package:car_rent/presentation/widgets/driver_card.dart';
import 'package:car_rent/presentation/widgets/more_car_card.dart';
import 'package:car_rent/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key, required this.car});

  final Car car;

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

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
          title: const Row(
        children: [
          Text('Information'),
          Icon(Icons.info_outline),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(
              car: widget.car,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const DriverCard(
                    userImagePath: 'assets/user.png',
                    driverName: 'Ahmed Mohsen',
                    price: 45.12214),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapDetailsScreen(car: widget.car),
                      )),
                  child: Card(
                    child: Image.asset(
                      'assets/maps.png',
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                  itemCount: cars.length,
                  itemBuilder: (context, index) =>
                      MoreCarCard(car: cars[index])),
            ),
          ],
        ),
      ),
    );
  }
}
