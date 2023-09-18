void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  List<String?> finalList = List.filled(6, null); // Buat list dengan panjang 6 dan isi dengan null
  finalList[1] = "Lukas Valentino"; // Isi elemen indeks ke-1 dengan nama
  finalList[2] = "2141720032"; // Isi elemen indeks ke-2 dengan NIM

  print(finalList.length); // Cetak panjang list (6)
  print(finalList[1]); // Cetak elemen indeks ke-1 (Lukas Valentino)
  print(finalList[2]); // Cetak elemen indeks ke-2 (2141720032)

}