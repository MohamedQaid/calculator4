import 'package:flutter/material.dart';

AppBar appBar(context) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'Calculator 0-0',
      style: TextStyle(),
    ),
    leading: InkWell(
      onTap: () {},
      child: const Icon(Icons.dark_mode_rounded
          ),
    ),
  );
}
