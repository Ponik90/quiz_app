import 'package:first_reexam/screen/home/view/home_screen.dart';
import 'package:first_reexam/screen/reward/view/reward_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screen = {
  '/': (context) => const HomeScreen(),
  'reward': (context) => const RewardScreen(),
};
