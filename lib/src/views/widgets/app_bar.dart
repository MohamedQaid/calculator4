import 'package:calculator4/src/provider/provider_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar appBar(context) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'Calculator 0-0',
      style: TextStyle(),
    ),
    leading: InkWell(
      onTap: () {
        Provider.of<ProviderTheme>(context, listen: false).changeTheme();
      },
      child: Icon(
        Provider.of<ProviderTheme>(context).modeThemeLightEnable
            ? Icons.dark_mode_rounded
            : Icons.light_mode_rounded,
      ),
    ),
  );
}
