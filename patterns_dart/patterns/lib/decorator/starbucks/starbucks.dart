import 'package:patterns/decorator/starbucks/beverage/beverage.dart';
import 'package:patterns/decorator/starbucks/beverage/dark_roast.dart';
import 'package:patterns/decorator/starbucks/beverage/decaffeinated.dart';
import 'package:patterns/decorator/starbucks/beverage/espresso.dart';
import 'package:patterns/decorator/starbucks/beverage/house_blend.dart';
import 'package:patterns/decorator/starbucks/condiments/mocha.dart';
import 'package:patterns/decorator/starbucks/condiments/soy.dart';
import 'package:patterns/decorator/starbucks/condiments/whip.dart';
import 'package:patterns/decorator/starbucks/condiments/whip_milk.dart';

void main(List<String> args) {
  Beverage expresso = Expresso();
  print('${expresso.getDescription()} | R\$ ${expresso.cost()}');

  Beverage darkRoast = DarkRoast();
  darkRoast = Mocha(darkRoast);
  darkRoast = Whip(darkRoast);

  print('${darkRoast.getDescription()} | R\$ ${darkRoast.cost()}');

  Beverage houseBland = HouseBlend();
  houseBland = Mocha(houseBland);
  houseBland = WhipMilk(houseBland);

  print('${houseBland.getDescription()} | R\$ ${houseBland.cost()}');

  Beverage decaffeinated = Decaffeinated();
  decaffeinated = Soy(decaffeinated);
  decaffeinated = Whip(decaffeinated);

  print('${decaffeinated.getDescription()} | R\$ ${decaffeinated.cost()}');
}
