class Stock {
  final double price;
  final StockTickerSymbol symbol;
  final StockRecommendation recommendation;

  Stock({
    required this.price,
    required this.symbol,
    required this.recommendation,
  });
}

enum StockTickerSymbol { oibr3, mglu5, petr4 }

enum StockRecommendation {
  buy,
  sell,
  neutral,
}

extension StockTickerSymbolExtension on StockTickerSymbol {
  String toShortString() => toString().split('.').last;
}
