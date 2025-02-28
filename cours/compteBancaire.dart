class CompteBancare {
  String nom;
  String prenom;
  String _code;
  int _solde;

  CompteBancare(this.nom, this.prenom, this._code, this._solde);
  void affiche() {
    print("Nom: $nom");
    print("PRENOM: $prenom");
    print("CODE: $Code");
    print("SOLDE: $Solde");
  }

  //accès aux champs privé
  String get Code => _code;

  int get Solde => _solde;

  //par exemple faisons un depot d'argent
  void deposit(int montant) {
    _solde += montant;
  }

  void retrit(int montant) {
    if (montant > _solde) {
      print("solde insuffisant");
    } else {
      _solde -= montant;
    }
  }
}

void main() {
  CompteBancare cptb =
      new CompteBancare("Diallo", "Ibrahima", "Bcge-299445", 600000);
  cptb.affiche();
  print("**************effectuon un depot*************");
  cptb.deposit(100000);
  print(cptb._solde);
  print("**************effectuon un retrait*************");
  cptb.retrit(50000);
  print(cptb._solde);
}
