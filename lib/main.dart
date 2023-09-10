import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              bodySmall: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
              titleMedium: const TextStyle(
                fontSize: 18,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
              ),
              titleSmall: const TextStyle(
                fontSize: 14,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.normal,
              ),
            ),
        colorScheme: ColorScheme.fromSeed(seedColor: kcPrimaryColor),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
