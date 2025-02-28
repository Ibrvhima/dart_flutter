class Cars {
  String name;
  String model;
  String color;
  String kilometrage;
  int price;

// LE CONSTRUCTEUR
  Cars(this.name, this.model, this.color, this.kilometrage, this.price);

  //methode affiche
  void Affiche() {
    print("The current car is:");
    print(
        "Name: $name\nModel: $model\nColor: $color\nKilometrage: $kilometrage\nPrice: $price €");
  }
}

void main() {
  Cars car1 = new Cars("TOYOTA", "RAV-4", "RED", "100000 KM", 15000);
  car1.Affiche();
}
