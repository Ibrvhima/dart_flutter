// 5. Exercice : Fonction asynchrone avec Future
// Crée une fonction qui simule un appel réseau en attendant une seconde (simuler l'asynchrone avec Future.delayed). La fonction doit retourner une chaîne de caractères après une seconde. Affiche ce résultat dans main.

// Objectif : Comprendre les futures et comment gérer l'asynchronisme.

Future<String> messageAsynchrone() async {
  await Future.delayed(Duration(seconds: 1));
  return "le message est retourné apres 1 seconde";
}

void main() async{
  print("veuillez patienter...");
  String message = await messageAsynchrone() ;
  print("$message");
}
