import 'package:flutter/material.dart';

class CustomThreeLinesIcon extends StatelessWidget {
  const CustomThreeLinesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => 
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(158, 158, 158, 0.6),
            borderRadius: BorderRadius.circular(20)
          ),
          margin: const EdgeInsets.symmetric(vertical: 1.5),
          height: 6.0,
          width: 2.0,
        )
      ),
    );
  }
}