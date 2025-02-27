import 'dart:io';

void main() {
  print("donner un nombre ");
  int nombre = int.parse(stdin.readLineSync()!);
  for (int a = 1; a <= 10; a++){
    print("$nombre x $a = ${nombre * a}");
  }
}
