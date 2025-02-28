bool estPremier(int nombre) {
  if (nombre < 2) return false;
  for (int i = 2; i * i < nombre; i++) {
    if (nombre % i == 0) return false;
  }
  return true;
}

void main() {
  List<int> test = [12, 34, 8, 549, 98, 33, 45, 67, 30, 48];
  for (int nb in test) {
    print("Le nombre $nb est il premier ${estPremier(nb)}");
  }
}
