import 'package:flutter/material.dart';

class CustomButtonCalculator extends StatelessWidget {
  const CustomButtonCalculator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        height: MediaQuery.sizeOf(context).height / 11,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: const Text(
          '4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
