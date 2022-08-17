// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_patterns_studies/strategy/brain_behaviour/brain.dart';
import 'package:design_patterns_studies/strategy/movement_behavior/movement.dart';
import 'package:design_patterns_studies/strategy/sound_behavior/sound.dart';

abstract class Animal {
  late MovementBehavior _movementBehavior;
  late SoundBehavior _soundBehavior;
  late BrainBehaviour _brainBehaviour;

  Animal();

  String performMovement() {
    final movement = _movementBehavior.move();
    print(movement);
    _brainBehaviour.store(movement);
    return movement;
  }

  String performSound() {
    final sound = _soundBehavior.makeSound();
    print(sound);
    _brainBehaviour.store(sound);
    return sound;
  }
}

class Cat extends Animal {
  Cat() {
    _movementBehavior = Walk();
    _soundBehavior = Meow();
    _brainBehaviour = LongTermMemory();
  }
}

class Dog extends Animal {
  Dog() {
    _movementBehavior = Walk();
    _soundBehavior = Bark();
    _brainBehaviour = LongTermMemory();
  }
}

class Duck extends Animal {
  Duck() {
    _movementBehavior = Fly();
    _soundBehavior = Quack();
    _brainBehaviour = ShortTermMemory();
  }
}

class Snake extends Animal {
  Snake() {
    _movementBehavior = Crawk();
    _soundBehavior = Silence();
    _brainBehaviour = ShortTermMemory();
  }
}
