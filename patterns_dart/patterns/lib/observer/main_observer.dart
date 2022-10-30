import 'package:patterns/observer/impl/stock_subject.dart';
import 'package:patterns/observer/impl/stock_subscriber.dart';
import 'package:patterns/observer/stock.dart';

void main() {
  StockSubject subject = StockSubject();

  OIBR3F(subject);

  subject.setStock(StockTickerSymbol.oibr3, 0.56);
  subject.setStock(StockTickerSymbol.oibr3, 0.58);
  subject.setStock(StockTickerSymbol.oibr3, 0.60);
  subject.setStock(StockTickerSymbol.oibr3, 0.70);
  subject.setStock(StockTickerSymbol.oibr3, 0.90);
}
