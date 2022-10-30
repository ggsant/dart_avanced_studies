import 'package:patterns/decorator/starbucks/beverage/beverage.dart';

abstract class CondimentsDecorator extends Beverage {
  final Beverage beverage;

  CondimentsDecorator(this.beverage);

  @override
  String getDescription();
}
