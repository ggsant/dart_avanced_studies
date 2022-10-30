import 'package:patterns/decorator/starbucks/beverage/beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = 'Café DarkRoast';
  }

  @override
  double cost() => 2.00;
}
