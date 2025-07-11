import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      child: Center(
        child: Text(
          'Movies Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
