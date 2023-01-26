import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 233, 137, 69),
        shape: BoxShape.circle,
      ),
    );
  }
}
