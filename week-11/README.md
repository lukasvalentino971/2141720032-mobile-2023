**Laporan Praktikum**
# **Pertemuan 11**
### **Dasar State Management**
------

### **Data Mahasiswa**

><p>Nama : Lukas Valentino<p>
>NIM : 2141720032<p>
>Kelas : 3H<p>
>Prodi : D-IV Teknik Informatika<p>
>Jurusan : Teknologi Informasi<p>

<br>

---------
<br>

### Tugas Praktikum 1: Dasar State dengan Model-View

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
<center>
<img src = 'docs/p1-1.gif' width = 197>
</center>

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
> Jawaban: Maksud dari langkah 4 adalah untuk mengelompokkan kode data layer ke dalam satu file. Hal ini bertujuan untuk mempermudah proses impor, terutama jika aplikasi berkembang dan memiliki lebih banyak model data.

>Sebelum langkah 4, kode data layer untuk Plan dan Task berada di file terpisah. Hal ini membuat proses impor kode data layer menjadi lebih rumit. Misalnya, jika kita ingin menggunakan model Plan di file plan_screen.dart, kita harus mengimpor file plan.dart terlebih dahulu.

>Dengan langkah 4, kita dapat mengimpor semua model data hanya dengan mengimpor file data_layer.dart. Hal ini akan membuat kode lebih ringkas dan mudah dibaca.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

>Jawaban : Variabel plan diperlukan di langkah 6 pada praktikum tersebut untuk menyimpan data rencana yang akan ditampilkan. Variabel ini dibuat konstanta agar nilainya tidak dapat diubah setelah deklarasinya.

>Mengapa perlu variabel plan?
>Variabel plan diperlukan untuk menyimpan data rencana yang akan ditampilkan. Data rencana ini terdiri dari nama rencana dan daftar tugas yang ada di dalam rencana tersebut.

>Mengapa dibuat konstanta?
>Variabel plan dibuat konstanta agar nilainya tidak dapat diubah setelah deklarasinya. Hal ini dilakukan karena data rencana harus tetap konsisten selama aplikasi berjalan. Jika nilai variabel plan dapat diubah, maka data rencana yang ditampilkan juga akan berubah.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
>Jawaban : Method initState() pada langkah 11 digunakan untuk menginisialisasi variabel scrollController. Variabel ini digunakan untuk melacak posisi scroll dari ListView.

>Method dispose() pada langkah 13 digunakan untuk melepaskan sumber daya yang digunakan oleh variabel scrollController. Hal ini penting untuk dilakukan agar memori tidak terpakai secara berlebihan.

6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!

