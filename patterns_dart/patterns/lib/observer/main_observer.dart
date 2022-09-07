import 'package:patterns/observer/stock_subscriber.dart';
import 'package:patterns/observer/stock_ticker_subject.dart';

void main(List<String> args) {
  final OIBR3StockTicker oibr3stockTicker = OIBR3StockTicker();

  final DefaultStockSubscriber subscriber = DefaultStockSubscriber();

  oibr3stockTicker.subscribe(subscriber);
}
