import 'package:design_patterns_studies/strategy/animal/animal.dart';
import 'package:flutter/material.dart';

void main() {
  final Cat cat = Cat();
  cat.performMovement();
  cat.performSound();

  final Dog dog = Dog();
  dog.performMovement();
  dog.performSound();

  final Duck duck = Duck();
  duck.performMovement();
  duck.performSound();

  final Snake snake = Snake();
  snake.performMovement();
  snake.performSound();
}
