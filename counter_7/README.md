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