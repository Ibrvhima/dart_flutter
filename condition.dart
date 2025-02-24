// verifier l'age d'un utilisateur

//importation de la bibliotheque qui permet la saisi au clavier
import 'dart:io';

void main() {
  print("Entrez votre nom: ");
  String? nom = stdin.readLineSync();
  print("Entrer votre age: ");
  String? ageDonne = stdin.readLineSync();

  if (ageDonne != null) {
    //convertir la saise de l'age en intier
    int? age = int.tryParse(ageDonne);

    //verification de l'age
    if (age != null) {
      if (age < 18) {
        print(" $nom Vous avez $age ans et vous êtes mineur 😏");
      } else {
        print(" $nom Vous avez $age ans et vous êtes majeur 🤗 bienvenu");
      }
    } else {
      print("erreur de saisi😣 Enter un age valid");
    }
  }
}
