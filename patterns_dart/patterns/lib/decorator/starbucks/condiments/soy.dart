import 'package:patterns/decorator/starbucks/beverage/beverage.dart';
import 'package:patterns/decorator/starbucks/condiments/condiments_decorator.dart';

class Soy extends CondimentsDecorator {
  Soy(Beverage beverage) : super(beverage);

  @override
  String getDescription() => '${beverage.getDescription()}, Leite de soja';

  @override
  double cost() => 3.00 + beverage.cost();
}
