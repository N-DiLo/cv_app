import 'package:cv_app/views/edit_view.dart';
import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../views/home_view.dart';
import './components/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: bodyLarge,
              bodyMedium: bodyMedium,
              bodySmall: bodySmall,
              titleLarge: titleLarge,
              titleMedium: titleMedium,
              titleSmall: titleSmall,
            ),
        colorScheme: ColorScheme.fromSeed(seedColor: kcPrimaryColor),
        useMaterial3: true,
      ),
      home: const HomeView(),
      routes: {
        EditView.routeName: (ctx) => const EditView(),
      },
    );
  }
}
