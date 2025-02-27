void greeting(String name) {
  print("bonjour $name");
}

int somme(int a, int b) {
  return a + b;
}

void checkTypeNumber(int a) {
  if (a % 2 == 0) {
    print("$a est un nombre PAIRE");
  } else {
    print("$a est un nombre IMPAIRE");
  }
}

double airCercle(double rayon) {
  return 3.14 * rayon * rayon;
}

String checkAge(String name, int age) {
  if (age < 18) {
    return "Desoler $name vous etes mineur";
  } else {
    return "Bienven $name vous etes majeur";
  }
}

int product(int a, int b) {
  return a * b;
}

void main() {
  //appel de la function greeting
  greeting("Ibrahima");

//appel de la function calcule somme
  int result = somme(2, 6);
  print("la somme est: $result");

  //appel de la function checkTypeNumber
  checkTypeNumber(2);

  //function qui appel airCercle
  double results = airCercle(5);
  print("l'air du cercle est de $results");

  //function qui appel checkAge
  String message = checkAge("mamadou", 19);
  print("$message");

  int prod = product(2, 5);
  print("le produit est $prod");
}
