import 'package:patterns/observer/stock.dart';

abstract class Subscriber {
  void update(Stock stock);
}
