import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:review_task/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Provider1>(
      // Use Provider1 instead of Provider
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.bgcolors[value.currentIndex], // Use currentIndex to get the current color
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  value.coolor();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


