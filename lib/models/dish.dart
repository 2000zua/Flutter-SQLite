class Dish {
  late String nome, descricao;
  late double price;

  Dish(this.nome, this.descricao, this.price);

  Dish.fromMap(Map map) {
    this.nome = map["name"];
    this.descricao = map["description"];
    this.price = map["price"];
  }
}
