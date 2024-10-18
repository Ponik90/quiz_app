import 'package:first_reexam/screen/category/view/category_screen.dart';
import 'package:first_reexam/screen/difficulty/view/difficulty_screen.dart';
import 'package:first_reexam/screen/home/view/home_screen.dart';
import 'package:first_reexam/screen/reward/view/reward_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screen = {
  '/': (context) => const CategoryScreen(),
  'difficulty': (context) => const DifficultyScreen(),
  'home': (context) => const HomeScreen(),
  'reward': (context) => const RewardScreen(),
};
