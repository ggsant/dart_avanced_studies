import 'package:patterns/decorator/starbucks/beverage/beverage.dart';
import 'package:patterns/decorator/starbucks/condiments/condiments_decorator.dart';

class Mocha extends CondimentsDecorator {
  Mocha(Beverage beverage) : super(beverage);

  @override
  String getDescription() => '${beverage.getDescription()}, Mocha';

  @override
  double cost() => 1.00 + beverage.cost();
}
