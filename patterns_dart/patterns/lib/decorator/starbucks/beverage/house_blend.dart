import 'package:patterns/decorator/starbucks/beverage/beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'Café da casa';
  }

  @override
  double cost() => 2.00;
}
