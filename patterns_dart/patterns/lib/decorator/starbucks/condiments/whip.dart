import 'package:patterns/decorator/starbucks/beverage/beverage.dart';
import 'package:patterns/decorator/starbucks/condiments/condiments_decorator.dart';

class Whip extends CondimentsDecorator {
  Whip(Beverage beverage) : super(beverage);

  @override
  String getDescription() => '${beverage.getDescription()} espumado';

  @override
  double cost() => 2.00 + beverage.cost();
}
