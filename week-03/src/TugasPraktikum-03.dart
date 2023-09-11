void main() {
  String nama = "Lukas Valentino";
  String nim = "2141720032";
  
  print("Nama: $nama");
  print("NIM: $nim");
  print("Bilangan Prima dari 0 sampai 201:");
  
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  if (number <= 3) {
    return true;
  }
  if (number % 2 == 0 || number % 3 == 0) {
    return false;
  }
  int i = 5;
  while (i * i <= number) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }
  return true;
}
