import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String imagePath;
  final String name;

  const AnimalCard({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 45,
          ),
          const SizedBox(height: 28),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
