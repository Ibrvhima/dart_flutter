// Creation d'une class annimal

class Animal {
  String name;

  Animal(this.name);

  void manger() {
    print("$name mange.");
  }
}

// declaration d'une classe enfante
class Chien extends Animal {
  String race;

  Chien(String name, this.race) : super(name);

  void oboyer() {
    print("$name oboye!");
  }
}

void main() {
  Chien chien1 = new Chien("rex", "allemande");
  chien1.manger();
  chien1.oboyer();
}
