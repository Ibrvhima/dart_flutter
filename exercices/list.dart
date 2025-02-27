void main() {
  List<int> myList = [12, 3, 66, 34, 40, 20, 4, 99, 87];
  print(myList);
  print("--------------------");
  print("les nombres paire sont");

  // Parcourir cette liste et ensuit afficher seulement les nombre paire
  for (int numbers in myList) {
    if (numbers % 2 == 0) {
      print(numbers);
    }
  }
}
