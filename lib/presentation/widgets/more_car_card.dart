import 'package:car_rent/data/models/car_model.dart';
import 'package:car_rent/presentation/widgets/label_image.dart';
import 'package:flutter/material.dart';

class MoreCarCard extends StatelessWidget {
  const MoreCarCard({super.key, required this.car});

  final Car car;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff2c2b34),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'more cars',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              car.model,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '>${car.distance.toStringAsFixed(1)}KM',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.battery_full,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${car.fuelCapacity.toStringAsFixed(1)}L',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
