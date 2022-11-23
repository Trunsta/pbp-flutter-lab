# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 7
### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak pernah berubah, seperti Icon, IconButton, dan Text.<br>
Stateful widget adalah widget yang dinamis, ia dapat berubah tampilan jika terjadi event yang di-trigger oleh user atau ketika menerima data.
### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Appbar<br>
Membuat bar untuk menambah fungsionalitas
- Center<br>
Memposisikan widget di tengah
- Column<br>
Widget layout yang memposisikan children berdasarkan kolom
- Text<br>
Mendisplay sebuah teks
- Stack<br>
Stack dapat membuat children yang overlap
- Positioned<br>
Memposisikan sebuah widget
### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berguna untuk memberi tahu Flutter bahwa terjadi perubahan pada state, sehingga dapat melakukan rerun dan mendisplay hasil perubahan. Variabel yang terdampak adalah variabel yang nilainya berubah pada fungsi tersebut, contohnya pada tugas ini adalah nilai counter.
### 4. Jelaskan perbedaan antara const dengan final.
Const dan final adalah keyword yang di-assign pada sebuah variabel. Const berarti nilai yang terbentuk pada variabel tersebut didapatkan saat compile-time. Final, sesuai namanya, berarti nilai pada variabel tersebut tidak akan berubah.
### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan fungsi decrementCounter untuk decrement counter.
- Membuat kondisi jika counter bernilai genap/ganjil maka akan muncul text genap/ganjil dengan styling berwarna merah/biru.
- Menambahkan button decrement dan memposisikannya menggunakan Stack dan Positioned. Button decrement hanya muncul jika nilai counter > 0.

# Tugas 8
### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedaan push dengan pushReplacement adalah pada fungsi pop. Push replacement menggantikan page sebelumnya dengan page yang dibuka, sedangkan pop hanya menumpuk page-page tersebut dalam stack. 

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Padding: Untuk memberikan padding<br> 
TextFormField: Untuk membuat input text.<br>
Center: Membuat komponen di center <br>
Column: Membuat sebuah column agar dapat membuat komponen atas dan bawah<br> 
TextButton: Sebuah button yang memiliki text<br> 
DropdownButtonFormField: Dropdown field yang memiliki validator

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
onPressed<br> onChange<br> onTap<br> onSaved<br>

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator mengontrol stack yang berisi objek-objek rute yang mempunyai 2 tipe yaitu deklaratif dan imperatif API (pop, push). Navigation bekerja seperti stack yaitu halaman yang terakhir ada di stack merupakan halaman yang akan diperlihatkan. Setiap kali ada perubahan halaman, maka halaman tersebut akan di push kedalam stack, namun apabila kita ingin kembali ke halaman sebelumnya kita harus melakukan pop.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat 2 file : add_budget dan data_budget.
- Membuat drawer pada semua file.
- Membuat input field dan meng-handle input pada add_budget.
- Memasukkan data budget yang diinput pada list.
- Menggunakan list tersebut sebagai argumen ke data_budget.
- Pada data_budget, digunakan data yang didapat untuk menampilkan hasil budget.

# Tugas 9
### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, namun tanpa models data yang didapatkan merupakan data mentah dari HTTP response sehingga akan lebih sulit untuk memproses data. Maka lebih baik membuat models sebelum mengambil data JSON. 

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
`Scaffold` Mengimplemen struktur *layout material design* dasar.<br>
`AppBar` Bar pada bagian atas halaman.<br>
`Padding` Memberi *padding* pada child widget.<br>
`Stack` Children widget dapat saling menimpa/overlap.<br>
`Column` Menempatkan children pada *array* vertikal.<br>
`Row` Menempatkan children pada *array* horizontal.<br>
`Center` Menempatkan child pada posisi tengah.<br>
`GestureDetector` Widget yang men-detect *gesture*.

### 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Menambahkan dependency http ke proyek.
- Membuat model sesuai dengan respons dari data yang berasal dari web service tersebut.
- Membuat http request ke web service menggunakan dependency http.
- Mengkonversikan objek yang didapatkan dari web service ke model yang telah kita buat.
- Menampilkan data yang telah dikonversi ke aplikasi dengan FutureBuilder.

### 4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan dependensi HTTP pada proyek.
- Membuat model untuk memproses data JSON.
- Membuat fungsi untuk fetch data.
- Menggunakan future builder untuk fetch dan men-display data.
- Membuat page detail yang berisi detail dari objek MyWatchList
- Menggunakan widget GestureDetector agar judul watchlist dapat di-*press* dan mengarah ke page detail.