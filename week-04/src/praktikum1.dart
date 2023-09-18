void main() {
  List<String?> finalList = List.filled(6, null); // Buat list dengan panjang 6 dan isi dengan null
  finalList[1] = "Lukas Valentino"; // Isi elemen indeks ke-1 dengan nama
  finalList[2] = "2141720032"; // Isi elemen indeks ke-2 dengan NIM

  print(finalList.length); // Cetak panjang list (6)
  print(finalList[1]); // Cetak elemen indeks ke-1 (Lukas Valentino)
  print(finalList[2]); // Cetak elemen indeks ke-2 (2141720032)
}