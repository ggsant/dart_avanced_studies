import 'package:patterns/factory/pizzas/calabreza.dart';
import 'package:patterns/factory/pizzas/chicken.dart';
import 'package:patterns/factory/pizzas/margherita.dart';
import 'package:patterns/factory/pizzas/pizza.dart';
import 'package:patterns/factory/stores/store.dart';

class TraditionalStyle extends PizzaStore {
  @override
  Pizza createPizza(Flavor flavor) {
    switch (flavor) {
      case Flavor.calabreza:
        return PizzaCalabreza(Style.traditional);
      case Flavor.chicken:
        return PizzaChicken(Style.traditional);
      case Flavor.margherita:
        return PizzaMargherita(Style.traditional);
      default:
        return PizzaCalabreza(Style.traditional);
    }
  }
}
