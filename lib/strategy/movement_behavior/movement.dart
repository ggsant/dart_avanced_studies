abstract class MovementBehavior {
  String move();
}

class Fly implements MovementBehavior {
  @override
  String move() => 'Estou voando';
}

class Walk implements MovementBehavior {
  @override
  String move() => 'Estou andando';
}

class Swim implements MovementBehavior {
  @override
  String move() => 'Estou nadando';
}

class Crawk implements MovementBehavior {
  @override
  String move() => 'Estou rastejando';
}
