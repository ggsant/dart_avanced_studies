import 'dart:async';

import 'package:faker/faker.dart';
import 'package:patterns/observer/stock.dart';
import 'package:patterns/observer/stock_subscriber.dart';

abstract class StockTickerSubject {
  late String title;

  /// periodically emits a new stock value that is stored in the stock property.
  late Timer stockTimer;

  /// subscribers that can subscribe to the stock ticker and unsubscribe from it.
  final List<StockSubscriber> _subscribers = <StockSubscriber>[];
  Stock? _stock;

  void subscribe(StockSubscriber subscriber) => _subscribers.add(subscriber);

  void unsubscribe(StockSubscriber subscriber) => _subscribers.removeWhere((s) => s.id == subscriber.id);

  void notifySubscriber() {
    for (final subscriber in _subscribers) {
      subscriber.update(_stock!);
    }
  }

  void setStock(StockTickerSymbol stockTickerSymbol, int max, int min) {
    final lastStock = _stock;
    final price = faker.randomGenerator.integer(max, min: min) / 100;
    final changeAmount = lastStock != null ? price - lastStock.price : 0.0;

    _stock = Stock(
      price: price,
      symbol: stockTickerSymbol,
      changeAmount: changeAmount.abs(),
      changeDirection: changeAmount > 0 //
          ? StockChangeDirection.growing
          : StockChangeDirection.falling,
    );
  }

  void stopTicker() => stockTimer.cancel();
}

class OIBR3StockTicker extends StockTickerSubject {
  OIBR3StockTicker() {
    title = StockTickerSymbol.oibr3.toShortString();
    stockTimer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setStock(StockTickerSymbol.oibr3, 1000, 0);
        notifySubscriber();
      },
    );
  }
}

class MGLU5StockTicker extends StockTickerSubject {
  MGLU5StockTicker() {
    title = StockTickerSymbol.mglu5.toShortString();
    stockTimer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setStock(StockTickerSymbol.mglu5, 250, 50);
        notifySubscriber();
      },
    );
  }
}

class PTR4StockTicker extends StockTickerSubject {
  PTR4StockTicker() {
    title = StockTickerSymbol.petr4.toShortString();
    stockTimer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setStock(StockTickerSymbol.petr4, 400, 100);
        notifySubscriber();
      },
    );
  }
}
