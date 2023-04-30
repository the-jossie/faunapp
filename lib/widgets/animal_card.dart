import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String imagePath;
  final String name;

  const AnimalCard({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 400,
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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
            // child: Image.asset(
            //   imagePath,
            //   fit: BoxFit.fill,
            // ),
          ),
          const Spacer(),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
