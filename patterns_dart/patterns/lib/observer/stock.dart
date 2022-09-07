class Stock {
  final StockTickerSymbol symbol;
  final StockChangeDirection changeDirection;
  final double price;
  final double changeAmount;

  Stock({
    required this.symbol,
    required this.changeDirection,
    required this.price,
    required this.changeAmount,
  });
}

enum StockTickerSymbol { oibr3, mglu5, petr4 }

enum StockChangeDirection {
  falling,
  growing,
}

extension StockTickerSymbolExtension on StockTickerSymbol {
  String toShortString() => toString().split('.').last;
}
