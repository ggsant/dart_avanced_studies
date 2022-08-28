abstract class SoundBehavior {
  void makeSound();
}

class Bark implements SoundBehavior {
  @override
  void makeSound() => print('Au au ');
}

class Meow implements SoundBehavior {
  @override
  void makeSound() => print('miau');
}

class Quack implements SoundBehavior {
  @override
  void makeSound() => print('quack quack');
}

class Silence implements SoundBehavior {
  @override
  void makeSound() => print('...');
}
