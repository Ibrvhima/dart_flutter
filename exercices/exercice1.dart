import 'dart:io';

void main() {
  print('donner un nombre');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number est un nombre PAIRE");
  } else {
    ("$number est un nombre IMPAIRE");
  }
}
