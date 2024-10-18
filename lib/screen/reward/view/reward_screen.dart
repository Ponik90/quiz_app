import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(



        title: const Text(
          "reward",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff405171),
      ),
      backgroundColor: const Color(0xff252A40),
    );
  }
}
