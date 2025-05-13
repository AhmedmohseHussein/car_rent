import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    super.key,
    required this.userImagePath,
    required this.driverName,
    required this.price,
  });

  final String userImagePath;
  final String driverName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CircleAvatar(
            radius: 40,
            foregroundImage: AssetImage(userImagePath),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(driverName),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$ ${price.toStringAsFixed(3)}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
