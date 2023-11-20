**Laporan Praktikum**
# **Pertemuan 13**
### **Lanjutan State Management dengan Streams**
------

### **Data Mahasiswa**

><p>Nama : Lukas Valentino<p>
>NIM : 2141720032<p>
>Kelas : 3H<p>
>Prodi : D-IV Teknik Informatika<p>
>Jurusan : Teknologi Informasi<p>

<br>


## Praktikum 1: Dart Streams

### Soal 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Jawab : 

```dart
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream - Lukas',
```
- Gantilah warna tema aplikasi sesuai kesukaan Anda.

Jawab : 

```dart
theme: ThemeData(
        primarySwatch: Colors.deepOrange,
```

- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

### Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

```dart
 Final List(Color) colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.redAccent,
    Colors.indigo,
    Colors.yellow,
    Colors.limeAccent,
    Colors.orange
  ]; 
```

- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"


### Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!

Jawab : 

>Fungsi keyword yield* pada kode tersebut adalah untuk menghasilkan nilai dari stream Stream.periodic. Keyword yield* memungkinkan kita untuk menghasilkan nilai dari stream lain atau iterable.

- Apa maksud isi perintah kode tersebut?

Jawab : 

>Isi perintah kode tersebut adalah untuk menghasilkan stream warna yang berganti setiap satu detik. Stream ini dihasilkan dengan cara menghasilkan nilai dari stream Stream.periodic yang setiap detiknya menghasilkan nilai integer. Nilai integer tersebut kemudian digunakan untuk menentukan indeks warna yang akan dihasilkan.

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"





