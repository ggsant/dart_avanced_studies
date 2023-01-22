import 'package:patterns/factory/pizzas/calabreza.dart';
import 'package:patterns/factory/pizzas/chicken.dart';
import 'package:patterns/factory/pizzas/margherita.dart';
import 'package:patterns/factory/pizzas/pizza.dart';
import 'package:patterns/factory/stores/store.dart';

class NyStore extends PizzaStore {
  @override
  Pizza createPizza(Flavor flavor) {
    switch (flavor) {
      case Flavor.calabreza:
        return PizzaCalabreza(Style.nyStyle);
      case Flavor.chicken:
        return PizzaChicken(Style.nyStyle);
      case Flavor.margherita:
        return PizzaMargherita(Style.nyStyle);
      default:
        return PizzaCalabreza(Style.nyStyle);
    }
  }
}
