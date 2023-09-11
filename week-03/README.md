# **Laporan Praktikum**
# **Pertemuan 3**
### **Percabangan pada pemrograman DART, Perulangan pada pemrograman DART, Operasi Gi**
------


### **Data Mahasiswa**


><p>Nama : Lukas Valentino<p>
>NIM : 2141720032<p>
>Kelas : 3H<p>
>Prodi : D-IV Teknik Inormatika<p>
>Jurusan : Teknologi Inormasi<p>


<br>

### **Tujuan Praktikum**
Setelah melakukan materi praktikum ini, mahasiswa mampu:

1. Menerapkan control flows pada bahasa pemrograman Dart
2. Menerapkan perulangan pada bahasa pemrograman Dart

<br>

---------
<br>

### **Praktikum 1: Menerapkan Control Flows ("if/else")**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**JAWAB**
<p>
Terdapat beberapa masalah penulisan yang dapat menyebabkan error. </p>
<img src = "docs/error-prak1-step2.png"><p>
- Menggunakan huruf besar untuk kata kunci If dan Else, tetapi dalam Dart, kata kunci ini harus ditulis dalam huruf kecil, yaitu if dan else.
- Menggunakan Else If (dengan huruf besar) yang seharusnya ditulis sebagai else if (dengan huruf kecil).

<img src = "docs/fixed-prak1-step2.png"><p>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

**JAWAB**<p>
berikut adalah hasil ekseuksi setelah menambahkan kode pada langkah 3 diatas<p>
<img src = "docs/praktikum1_03.PNG"><p>
hal ini terjadi karena  variabel test dua kali dalam fungsi main(), yang tidak diizinkan dalam Dart. Setiap variabel harus memiliki nama yang berbeda,  string "true" sebagai kondisi dalam if statement kedua bukan cara yang benar untuk melakukan pengecekan kebenaran dalam Dart, Selain itu, saya menggunakan perbandingan == untuk memeriksa nilai variabel string dengan nilai yang diharapkan. berikut adalah hasil perbaikan dari kode diatas

```dart
//praktikum 1
void main(){
    String test = "test2";
        if (test == "test1") {
            print("Test1");
            } else if (test == "test2") {
                print("Test2");
                } else {
                    print("Something else");
                    }
        if (test == "test2") print("Test2 again");
    
    String test2 = "true";
        if (test2 == "true") {
            print("Kebenaran");
    }
}
```
maka akan menghasilkan output seperti gambar dibawah ini<p>
<img src = "docs/praktikum1_04.PNG"><p>



>**Equality checking and type coercion**<p>
>Di JavaScript, pemeriksaan dua variable dapat menggunakan double "==" atau triple "===". Untuk double "==" hanya membandingkan nilainya saja, sedangkan triple "===" dibandingkan dengan tipe datanya. Contohnya dalam JavaScript, "7" == 7 akan bernilai true, tetapi "7" === 7 akan bernilai false. Ini bisa jadi sebuah bug jika Anda lupa dengan operator ini. Dart cukup menggunakan double "==" untuk membandingkan nilai sekaligus tipe datanya.<p>

Berikut tambahan video materi terkait <p>
- [Youtube Dart Conditional Expressions: Ternary Operator of Java. Dart Flutter Tutorial (klik)](https://www.youtube.com/watch?v=qNWcoc25Ex4)<p>
- [Youtube Dart SWITCH and CASE conditional statements. Dart Tutorial for Flutter (klik)](https://www.youtube.com/watch?v=XwehKYcCHzY)<p>

-----
<br>

### **Praktikum 2: Menerapkan Perulangan "while" dan "do-while"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
setelah saya melakukan eksekusi pada langkah q tersebut didapati eror seperti dibawah ini<p>
<img src = "docs/praktikum2_01.PNG"><p>
hal ini terjadi karena variabel counter tidak dideklarasikan atau diinisialisasi sebelumnya. Sehingga, jika  mencoba menjalankan kode tersebut, akan mendapatkan kesalahan karena counter tidak memiliki nilai awal yang jelas. Untuk menghindari kesalahan ini, perlu menginisialisasi counter sebelum menggunakannya dalam loop. dan berikut kode yang saya perbaiki beserta hasil outputnya

```dart
void main() {
  int counter = 0; // Inisialisasi counter
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```
<img src = "docs/praktikum2_02.PNG"><p>
<img src = "docs/praktikum2_03.PNG"><p>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

**JAWAB**<p>
setelah saya melakukan eksekusi kode diatas terjadi eror seperti gambar dibawah ini<p>
<img src = "docs/praktikum2_04.PNG"><p>
hal tersbut terjadi karena variabel counter tidak dideklarasikan atau diinisialisasi sebelumnya. berikut adalah hasil modifikasi kode programnya<p>

```dart
void main() {
  int counter = 0; // Inisialisasi counter
  
  do {
    print(counter);
    counter++;
    } while (counter < 77);
}
```
berikut adalah hasil outputnya<p>
<img src = "docs/praktikum2_05.PNG"><p>


Berikut tambahan video materi terkait Conditional Expressions dan Switch-Case statements.<p>
- [Youtube Dart Loops and Iterators: Loop Control Statements. Dart Flutter Tutorial  (klik)](https://www.youtube.com/watch?v=JuOHAd0LWPE&t=1s)<p>


----
<br>

### **Praktikum 3:  Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
setelah saya mengeksekusi kode pada langkah 1 tersebut didapati eror seperti gambar dibawah ini<p>
<img src = "docs/praktikum3_01.PNG"><p>
hal tersebut terjadi karena Deklarasi dan inisialisasi variabel index dengan tipe data int harus dimulai dengan huruf kecil (index bukan Index) untuk mengikuti konvensi penulisan dalam Dart, Pada bagian for, harus menambahkan ekspresi index++ untuk menambah nilai index setiap kali iterasi. Tanpa ini, loop tidak akan pernah berakhir, dan  akan mengalami loop tak terbatas. dan berikut hasil modifikasi kodenya

```dart
void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}
```
<img src = "docs/praktikum3_02.PNG"><p>
maka kode akan mencetak angka dari 10 hingga 26 karena loop akan berjalan selama index kurang dari 27.


### **Langkah 3**
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

**JAWAB**<p>
setelah saya melakukan eksekusi pada kode program diatas didapati hasil output seperti berikut<p>
<img src = "docs/praktikum3_03.PNG"><p>
hal tersebut terjadi karena penggunaan If dan Else If harus diganti menjadi if dan else if dengan huruf kecil, penambahan kurung kurawal {} untuk mengelompokkan pernyataan di dalam blok if dan else if, gunakan huruf kecil index saat membandingkan nilai dalam pernyataan if dan else if. dan berikut hasil modifikasi kode programnya

```dart
void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21){
      break;
    }
    else if (index > 1 && index < 7){
      continue;
    }
    
    print(index);
  }
}
```
<img src = "docs/praktikum3_04.PNG"><p>

Berikut tambahan video materi terkait .<p>
- [Youtube Dart FOR Loop and how it works internally. Dart Tutorial for Flutter(klik)](https://www.youtube.com/watch?v=BCiyJOb7X-w&t=4s)<p>

----
<br>

### **Tugas Praktikum**
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!<p>

**Jawab**<p>
- [Praktikum 1 (klik)](#praktikum-1-menerapkan-control-flows-ifelse)
- [Praktikum 2 (klik)](#praktikum-2-menerapkan-perulangan-while-dan-do-while)
- [Praktikum 3 (klik)](#praktikum-3-praktikum-3-menerapkan-perulangan-for-dan-break-continue)
<p>

2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.<p>
**Jawab**<p>


3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!