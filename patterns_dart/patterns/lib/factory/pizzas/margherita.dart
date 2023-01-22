import 'package:patterns/factory/pizzas/pizza.dart';

class PizzaMargherita extends Pizza {
  PizzaMargherita(super.style);

  @override
  String get ingredients => 'Molho de tomate, mussarela, manjericão, tomate';

  @override
  double get price => 20.90;
}
