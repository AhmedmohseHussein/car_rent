import 'package:car_rent/data/models/car_model.dart';
import 'package:car_rent/presentation/widgets/label_image.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({super.key, required this.car});

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
              'Corolla Cross',
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
                LabelImage(
                  imagePath: 'assets/gps.png',
                  label: '>4KM',
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 15,
                ),
                LabelImage(
                  imagePath: 'assets/pump.png',
                  label: '50L',
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
