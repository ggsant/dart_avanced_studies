import 'package:patterns/decorator/starbucks/beverage/beverage.dart';

class Decaffeinated extends Beverage {
  Decaffeinated() {
    description = 'Café Descafeinado';
  }

  @override
  double cost() => 2.00;
}
