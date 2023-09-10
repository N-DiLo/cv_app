import 'package:cv_app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kcBackgroundColor,
        actions: [
          const Text(
            'Edit CV',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 20,
              color: kcPrimaryColor,
            ),
          ),
        ],
      ),
      backgroundColor: kcBackgroundColor,
      body: const Center(
        child: Text('Known bodyText'),
      ),
    );
  }
}
