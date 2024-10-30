import 'package:flutter/material.dart';

import '../../models/fruits_combo_model/fruit_combo_model.dart';
import '../../theme/color_manager.dart';

class Constants {
  static List<FruitComboModel> fruitsData = [
    FruitComboModel(
      fruitName: 'Tropical Delight',
      price: 1000,
      imagePath: 'assets/images/combo_image_1.png',
      color: Colors.white,
      type: 'hottest',
      description: 'Pineapple, mango, papaya, banana, coconut shavings',
    ),
    FruitComboModel(
      fruitName: 'Berry Blast',
      price: 1200,
      imagePath: 'assets/images/combo_image_2.png',
      color: Colors.white,
      type: 'popular',
      description: 'Strawberries, blueberries, raspberries, blackberries',
    ),
    FruitComboModel(
      fruitName: 'Citrus Zing',
      price: 900,
      imagePath: 'assets/images/combo_image_3.png',
      color: Colors.white,
      type: 'new combo',
      description: 'Oranges, grapefruits, mandarins, lemon zest',
    ),
    FruitComboModel(
      fruitName: 'Melon Medley',
      price: 800,
      imagePath: 'assets/images/combo_image_4.png',
      color: Colors.white,
      type: 'top',
      description: 'Watermelon, cantaloupe, honeydew',
    ),
    FruitComboModel(
      fruitName: 'Exotic Fusion',
      price: 1400,
      imagePath: 'assets/images/combo_image_1.png',
      color: Colors.white,
      type: 'hottest',
      description: 'Dragon fruit, kiwi, pomegranate, starfruit',
    ),
    FruitComboModel(
      fruitName: 'Apple Crunch',
      price: 700,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber,
      type: 'popular',
      description: 'Apples (green and red), grapes, pears, with a sprinkle of cinnamon',
    ),
    FruitComboModel(
      fruitName: 'Summer Bliss',
      price: 1500,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte,
      type: 'new combo',
      description: 'Peaches, apricots, cherries, nectarines',
    ),
    FruitComboModel(
      fruitName: 'Tropical Citrus Burst',
      price: 2000,
      imagePath: 'assets/images/combo_image_4.png',
      color: ColorManager.antiFlashWhite,
      type: 'top',
      description: 'Pineapple, orange, kiwi, passion fruit',
    ),
    FruitComboModel(
      fruitName: 'Green Garden',
      price: 600,
      imagePath: 'assets/images/combo_image_1.png',
      color: ColorManager.flashWhite,
      type: 'hottest',
      description: 'Kiwi, green apple, grapes, honeydew, mint garnish',
    ),
    FruitComboModel(
      fruitName: 'Berry Kiwi Splash',
      price: 1100,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber,
      type: 'popular',
      description: 'Strawberries, kiwi, blackberries, blueberries',
    ),
    FruitComboModel(
      fruitName: 'Antioxidant Power',
      price: 1300,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte,
      type: 'new combo',
      description: 'Blueberries, pomegranate seeds, Koji berries, kiwi',
    ),
    FruitComboModel(
      fruitName: 'Sunshine Mix',
      price: 700,
      imagePath: 'assets/images/combo_image_4.png',
      color: ColorManager.antiFlashWhite,
      type: 'top',
      description: 'Mango, pineapple, orange, banana',
    ),
    FruitComboModel(
      fruitName: 'Berry & Melon Splash',
      price: 800,
      imagePath: 'assets/images/combo_image_1.png',
      color: ColorManager.flashWhite,
      type: 'hottest',
      description: 'Watermelon, strawberries, raspberries, mint leaves',
    ),
    FruitComboModel(
      fruitName: 'Tropical Berry Twist',
      price: 1600,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber,
      type: 'popular',
      description: 'Pineapple, mango, strawberries, raspberries',
    ),
    FruitComboModel(
      fruitName: 'Citrus & Berry Punch',
      price: 500,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte,
      type: 'new combo',
      description: 'Grapefruit, oranges, blueberries, raspberries',
    ),
  ];
}
