abstract class SoundBehavior {
  String makeSound();
}

class Bark implements SoundBehavior {
  @override
  String makeSound() => 'Au au ';
}

class Meow implements SoundBehavior {
  @override
  String makeSound() => 'miau';
}

class Quack implements SoundBehavior {
  @override
  String makeSound() => 'quack quack';
}

class Silence implements SoundBehavior {
  @override
  String makeSound() => '...';
}
