import 'package:patterns/factory/pizzas/pizza.dart';

class PizzaChicken extends Pizza {
  PizzaChicken(super.style);

  @override
  String get ingredients => 'Molho de tomate, mussarela, frango, catupiry';

  @override
  double get price => 24.90;
}
