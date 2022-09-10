import 'package:patterns/observer/impl/stock_subject.dart';
import 'package:patterns/observer/interfaces/display_element.dart';
import 'package:patterns/observer/interfaces/subscriber.dart';
import 'package:patterns/observer/stock.dart';

class OIBR3F implements Subscriber, DisplayElement {
  final StockSubject stockSubject;
  Stock? stock;

  OIBR3F(this.stockSubject) {
    stockSubject.registerSubscriber(this);
  }

  @override
  void display() {
    print('symbol: ${stock?.symbol.name}, price: ${stock?.price}, recommendation: ${stock?.recommendation.name}');
  }

  @override
  void update(Stock stock) {
    this.stock = stock;
    display();
  }
}
