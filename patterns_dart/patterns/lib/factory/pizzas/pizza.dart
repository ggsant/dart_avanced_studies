abstract class Pizza {
  final Style style;

  Pizza(this.style);

  String get ingredients;
  double get price;

  void prepare() {
    print('Separando ingredientes: $ingredients');
    print('Preparando a pizza no estilo $style');
  }

  void bake() {
    print('Pizza sendo assada');
  }

  void cut() {
    print('Cortando a pizza');
  }

  void box() {
    print('Embalando a pizza');
  }
}

enum Style { nyStyle, traditional, chicagoStyle }

enum Flavor { margherita, calabreza, chicken }
