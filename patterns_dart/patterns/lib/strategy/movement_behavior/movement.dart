abstract class MovementBehavior {
  void move();
}

class Fly implements MovementBehavior {
  @override
  void move() => print('Estou voando');
}

class Walk implements MovementBehavior {
  @override
  void move() => print('Estou andando');
}

class Swim implements MovementBehavior {
  @override
  void move() => print('Estou nadando');
}

class Crawk implements MovementBehavior {
  @override
  void move() => print('Estou rastejando');
}
