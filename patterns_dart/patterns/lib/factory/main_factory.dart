import 'package:patterns/factory/pizzas/pizza.dart';
import 'package:patterns/factory/stores/ny_store.dart';

void main() {
  final store = NyStore();
  store.orderPizza(Flavor.calabreza);
  print('-------------------------');
  store.orderPizza(Flavor.chicken);
}
