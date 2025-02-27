//creation de l'objet

void main() {
  Map<String, dynamic> student = {"nom": "Ibrahima", "age": 33, "taille": 1.85};
  student["ville"] = "Conakry";
  for (var entry in student.entries) {
    print("${entry.key} : ${entry.value}");
  }
}
