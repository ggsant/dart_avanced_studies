import 'package:patterns/strategy/animal/animal.dart';

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
