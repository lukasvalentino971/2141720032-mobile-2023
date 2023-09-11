//Tugas
List<int> sieveAlgoritm(int n) {
  List<bool> isPrime = List<bool>.filled(n + 1, true);
  List<int> primes = [];

  for (int p = 2; p * p <= n; p++) {
    if (isPrime[p]) {
      for (int i = p * p; i <= n; i += p) {
        isPrime[i] = false;
      }
    }
  }

  for (int i = 2; i <= n; i++) {
    if (isPrime[i]) {
      primes.add(i);
    }
  }

  return primes;
}

void main() {
  int n = 201; 
  String nama = "Lukas Valentino";
  String nim = "2141720032";
  List<int> primeNumbers = sieveAlgoritm(n);

  print("Bilangan prima dari 2 hingga $n adalah:");
  print(primeNumbers);
  print("Nama : $nama");
  print("NIM : $nim");
}
