import 'package:patterns/decorator/starbucks/beverage/beverage.dart';

class Expresso extends Beverage {
  Expresso() {
    description = 'Café expresso';
  }

  @override
  double cost() => 2.00;
}
