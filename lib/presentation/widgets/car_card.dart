import 'package:car_rent/presentation/screens/car_details.dart';
import 'package:car_rent/presentation/widgets/label_image.dart';
import 'package:flutter/material.dart';

import '../../data/models/car_model.dart';

class CarCard extends StatefulWidget {
  const CarCard({
    super.key,
    required this.car,
  });

  final Car car;
  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CarDetails(
            car: widget.car,
          ),
        ),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Image.asset(
              'assets/car_image.png',
              height: 120,
            ),
            Text(
              widget.car.model,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    LabelImage(
                      imagePath: 'assets/gps.png',
                      label: '${widget.car.distance.toStringAsFixed(0)}km',
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    LabelImage(
                      imagePath: 'assets/pump.png',
                      label: '${widget.car.fuelCapacity.toStringAsFixed(0)}L',
                      color: Colors.black,
                    ),
                  ],
                ),
                Text(
                  '\$ ${widget.car.pricePerHour.toStringAsFixed(2)}/h',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
