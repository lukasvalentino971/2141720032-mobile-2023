void main() {
  // Deklarasi variabel nullable
  String? name;

  // Set nilai null ke variabel nullable
  name = null;

  // Cetak nilai variabel nullable
  print(name); // Output: null

  // Cek apakah variabel nullable bernilai null
  if (name != null) {
    // Jika variabel nullable tidak bernilai null, cetak nilainya
    print(name);
  } else {
    // Jika variabel nullable bernilai null, cetak pesan
    print("Name is not set");
  }

  // Deklarasi variabel non-nullable
  String lastName = "Smith";

  // Cetak nilai variabel non-nullable
  print(lastName); // Output: Smith

  // Mencoba mengakses variabel non-nullable yang bernilai null
  // Akan menghasilkan error runtime
  // print(lastName!);
}
