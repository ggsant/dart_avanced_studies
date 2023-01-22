import 'package:patterns/factory/pizzas/pizza.dart';

abstract class PizzaStore {
  Pizza orderPizza(Flavor flavor) {
    Pizza pizza = createPizza(flavor);
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();

    return pizza;
  }

  Pizza createPizza(Flavor flavor);
}
