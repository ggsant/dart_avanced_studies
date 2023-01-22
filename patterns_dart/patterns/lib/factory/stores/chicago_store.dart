import 'package:patterns/factory/pizzas/calabreza.dart';
import 'package:patterns/factory/pizzas/chicken.dart';
import 'package:patterns/factory/pizzas/margherita.dart';
import 'package:patterns/factory/pizzas/pizza.dart';
import 'package:patterns/factory/stores/store.dart';

class ChicagoStore extends PizzaStore {
  @override
  Pizza createPizza(Flavor flavor) {
    switch (flavor) {
      case Flavor.calabreza:
        return PizzaCalabreza(Style.chicagoStyle);
      case Flavor.chicken:
        return PizzaChicken(Style.chicagoStyle);
      case Flavor.margherita:
        return PizzaMargherita(Style.chicagoStyle);
      default:
        return PizzaCalabreza(Style.chicagoStyle);
    }
  }
}
