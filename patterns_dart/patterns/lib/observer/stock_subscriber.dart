import 'dart:async';

import 'package:faker/faker.dart';
import 'package:patterns/observer/stock.dart';

abstract class StockSubscriber {
  late String title;

  final id = faker.guid.guid();

  final StreamController<Stock> _stockStreamController = StreamController.broadcast();

  Stream<Stock> get stockStream => _stockStreamController.stream;

  void update(Stock stock);

  void display() {
    stockStream.listen((stock) {
      print('${stock.symbol.name} |preço: ${stock.price} |variação: ${stock.changeAmount} | ${stock.changeDirection.name}');
    });
  }
}

class DefaultStockSubscriber extends StockSubscriber {
  DefaultStockSubscriber() {
    title = 'Todas as ações';
  }

  @override
  void update(Stock stock) {
    _stockStreamController.add(stock);
    display();
  }
}

class GrowingStockSubscriber extends StockSubscriber {
  GrowingStockSubscriber() {
    title = 'Ações que tiveram alta';
  }

  @override
  void update(Stock stock) {
    if (stock.changeDirection == StockChangeDirection.growing) {
      _stockStreamController.add(stock);
      display();
    }
  }
}
