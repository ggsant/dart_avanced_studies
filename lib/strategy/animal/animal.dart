// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_patterns_studies/strategy/movement_behavior/movement.dart';
import 'package:design_patterns_studies/strategy/sound_behavior/sound.dart';

abstract class Animal {
  late MovementBehavior _movementBehavior;
  late SoundBehavior _soundBehavior;

  Animal();

  String performMovement() {
    print(_movementBehavior.move());
    return _movementBehavior.move();
  }

  String performSound() {
    print(_soundBehavior.makeSound());
    return _soundBehavior.makeSound();
  }
}

class Cat extends Animal {
  Cat() {
    _movementBehavior = Walk();
    _soundBehavior = Meow();
  }
}

class Dog extends Animal {
  Dog() {
    _movementBehavior = Walk();
    _soundBehavior = Bark();
  }
}

class Duck extends Animal {
  Duck() {
    _movementBehavior = Fly();
    _soundBehavior = Quack();
  }
}

class Snake extends Animal {
  Snake() {
    _movementBehavior = Crawk();
    _soundBehavior = Silence();
  }
}
