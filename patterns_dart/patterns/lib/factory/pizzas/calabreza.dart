import 'package:patterns/factory/pizzas/pizza.dart';

class PizzaCalabreza extends Pizza {
  PizzaCalabreza(super.style);

  @override
  String get ingredients => 'Molho de tomate, mussarela, calabresa, cebola, catupiry';

  @override
  double get price => 23.90;
}
