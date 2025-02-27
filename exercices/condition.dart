import 'dart:io';

void main() {
  print("Donne un nombre! ");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('$number est un nombre PAIRE');
  } else {
    print("$number est un nombre IMPAIRE");
  }
}
