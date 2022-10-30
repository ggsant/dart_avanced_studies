import 'package:patterns/decorator/starbucks/beverage/beverage.dart';
import 'package:patterns/decorator/starbucks/condiments/condiments_decorator.dart';

class WhipMilk extends CondimentsDecorator {
  WhipMilk(Beverage beverage) : super(beverage);

  @override
  String getDescription() => '${beverage.getDescription()}, Leite com espuma';

  @override
  double cost() => 2.00 + beverage.cost();
}
