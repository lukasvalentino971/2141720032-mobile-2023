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

### Soal 4
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

Jawab :
<center>
<img src="docs/tugas13-04.gif" width=197>
</center>

- Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"

### Soal 5
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

Jawab : 

>Listen:
>1. Sifat Sinkronus-Asinkronus: Metode listen bersifat asinkronus, yang berarti bahwa eksekusi program dapat melanjutkan ke baris kode berikutnya tanpa menunggu pengiriman data ke stream selesai.
>2. Fleksibilitas Handling: Anda dapat menggunakan metode listen untuk menentukan handler fungsi yang akan dijalankan setiap kali ada perubahan pada stream.
>3. Non-blocking: Penggunaan listen memungkinkan eksekusi program untuk melanjutkan ke baris berikutnya tanpa harus menunggu setiap data diambil dari stream.

> Await for:
>1. Sifat Sinkronus: Metode await for bersifat sinkronus, yang berarti bahwa eksekusi program akan tetap menunggu hingga ada data yang tersedia di stream sebelum melanjutkan ke baris kode berikutnya.
>2. Penggunaan Iterator: Penggunaan await for mirip dengan penggunaan iterator untuk mengonsumsi nilai dari stream secara satu per satu.
>3. Blocking: Penggunaan await for akan memblokir eksekusi program sampai data tersedia di stream atau stream ditutup.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"

## Praktikum 2: Stream controllers dan sinks

### Soal 6
- Jelaskan maksud kode langkah 8 dan 10 tersebut!

Jawab : 

>Langkah 8: Edit initState()
>Metode initState() dipanggil ketika widget pertama kali dibuat. Dalam langkah ini, kode sedang membuat objek NumberStream dan objek StreamController. StreamController digunakan untuk mengontrol aliran data yang dikeluarkan oleh NumberStream. Aliran kemudian didengarkan, dan metode setState() dipanggil setiap kali peristiwa baru dikeluarkan. Ini memastikan bahwa widget diperbarui setiap kali nomor terbaru diterima.

>Langkah 10: Tambah method addRandomNumber()
>Metode addRandomNumber() digunakan untuk menambahkan nomor acak ke aliran data. Metode ini pertama-tama membuat objek Random dan kemudian memanggil metode nextInt() untuk mendapatkan nomor acak antara 0 dan 9. Nomor acak kemudian ditambahkan ke aliran menggunakan metode addNumberToSink().


- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

Jawab :
<center>
<img src="docs/tugas13-06.gif" width=197>
</center>

### Soal 7
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

Jawab : 
>Pada langkah 13, kita menambahkan method addError() ke kelas Stream. Method ini digunakan untuk menambahkan error ke stream.
>Pada langkah 15, kita mengedit method addRandomNumber(). Kita mengomentari dua baris kode yang sebelumnya digunakan untuk menambahkan random number ke stream. Kemudian, kita menambahkan kode baru untuk menambahkan error ke stream.

- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

Jawab : 
```dart
  // addError() {
  //   controller.sink.addError('error');
  // }
```

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".

Jawab :
<center>
<img src="docs/tugas13-06.gif" width=197>
</center>





