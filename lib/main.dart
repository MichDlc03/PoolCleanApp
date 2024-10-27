import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pool_clean_app/pages/splash.dart';
import 'package:pool_clean_app/widgets/menu.navegacion.dart';

void main() {
  runApp(const PoolClean());
}

class PoolClean extends StatelessWidget {
  const PoolClean({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
