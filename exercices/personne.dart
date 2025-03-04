// Creation d'une classe personne
class Personne {
  String nom;
  int _age;

// Le constructeur
  Personne(this.nom, this._age);

  // Le getter
  int get age => _age;

  // Le setter
  set age(int newAge) {
    if (newAge > 0) {
      newAge = _age;
    } else {
      print("L'age doit être positf");
    }
  }

  void affichePersonne() {
    print("Nom: $nom\nAge: $age");
  }
}

// Creation d'une classe derivé Etudiant
class Etudiant extends Personne {
  String niveau;

  // Son constructeur
  Etudiant(String nom, int _age, this.niveau) : super(nom, _age);
  void afficheEtudiant() {
    print("Niveau: $niveau");
  }
}

void main() {
  Personne p = new Personne("Diall Ibrahima", 22);
  p.affichePersonne();
  Etudiant e = new Etudiant("Aminata", 20, "Licence 1");
  e.afficheEtudiant();
}
