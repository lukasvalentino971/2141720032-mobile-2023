void main(List<String> args) {
  findPrimeNumber();
}

void findPrimeNumber() {
  int start = 0;
  int n = 201;
  String nama = "Maulana Arif Wijaya";
  String nim = "2141720085";

  for (int i = start; i <= n; i++) {
    if (i == 0 || i == 1) {
      continue;
    }

    bool isPrime = true;

    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("Nama: $nama \nNIM: $nim");
      print("bilangan prima: $i");
    }
  }
}