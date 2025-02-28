// CREATION D'UNE CLASSE PERSONNE
class Personne {
  String name;
  int age;

  Personne(this.name, this.age);

  void affichePersonne() {
    print("Nom: $name eâge: $age ans");
  }
}

void main() {
  Personne p = new Personne("Ibrahima", 22);
  p.affichePersonne();
}
