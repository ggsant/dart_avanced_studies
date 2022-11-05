import 'package:patterns/strategy/animal/animal.dart';

void main(List<String> args) {
  final strategy = Cat();
  strategy.performMovement();
}
