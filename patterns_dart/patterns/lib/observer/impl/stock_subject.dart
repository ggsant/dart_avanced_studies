import 'package:patterns/observer/interfaces/subject.dart';
import 'package:patterns/observer/interfaces/subscriber.dart';
import 'package:patterns/observer/stock.dart';

class StockSubject implements Subject {
  StockSubject();

  final List<Subscriber> _subscribers = [];
  Stock? _stock;

  @override
  void notifySubscriber() {
    for (final subscriber in _subscribers) {
      if (_stock != null) subscriber.update(_stock!);
    }
  }

  @override
  void registerSubscriber(Subscriber subscriber) => _subscribers.add(subscriber);

  @override
  void removeSubscriber(Subscriber subscriber) {
    final index = _subscribers.indexOf(subscriber);
    if (index >= 0) {
      _subscribers.removeAt(index);
    }
  }

  void setStock(StockTickerSymbol symbol, double price) {
    final Stock? lastStock = _stock;

    final delta = lastStock != null ? price - lastStock.price : 0.0;

    _stock = Stock(
      price: price,
      symbol: symbol,
      recommendation: delta > 0 //
          ? StockRecommendation.buy
          : StockRecommendation.sell,
    );

    notifySubscriber();
  }

  Stock? get getStock => _stock;
}
