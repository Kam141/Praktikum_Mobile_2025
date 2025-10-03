# Laporan Praktikum Flutter - Layout & Navigasi

**Nama**: Kamila Habiba Putri Ananta  
**NIM**: 2341720175  

---

## Tujuan
Mempelajari cara membuat layout dasar (Row, Column, Container, ListView) serta menerapkan navigasi antar halaman menggunakan `Navigator`.

---

## Praktikum

### Praktikum 1 Membangun Layout di Flutter dan title section
Melakukan identifikasi elemen dan tata letaknya. Setelah itu kita melakukan implementasi tittle row  
![Screenshot Layout](Hasil_praktikum/layout.png)

---

### Praktikum 2 Implementasi Button Row
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.  
![Screenshot button](Hasil_praktikum/icon.png)

---

### Praktikum 3 Implementasi Text section
Menampilkan tulisan/teks dibawah button. Dengan memberi nilai `softWrap = true`, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.  
![Screenshot textSection](Hasil_praktikum/text_section.png)

---

### Praktikum 4 Implementasi Image section
Menampilkan gambar pada halaman dan mengubah aturan semua elemen dari `Column` menjadi `ListView`.  
![Screenshot imageSection](Hasil_praktikum/image_section.png)

---
## Tugas Praktikum 1


## Kesimpulan
Praktikum ini membantu memahami dasar pembuatan layout di Flutter serta cara berpindah antar halaman dengan membawa data.

---

### Praktikum 5  Navigasi dengan Parameter
Pada praktikum ini dipelajari cara **mengirim data antar halaman** menggunakan parameter pada saat melakukan navigasi dengan `Navigator.push`. Data yang dikirim dapat ditampilkan pada halaman tujuan.

**Hasil**  
![Praktikum 5 – Passing Data](Hasil_praktikum/praktikum5.gif)

---

## Tugas Praktikum 2
Tugas ini meminta membuat **layout responsif dan adaptif**, yaitu tampilan aplikasi yang dapat menyesuaikan ukuran layar (smartphone, tablet, maupun desktop). Hal ini dilakukan menggunakan `LayoutBuilder`, `MediaQuery`, serta teknik breakpoint.

### Nomor 1  
Menampilkan tampilan dasar yang dapat menyesuaikan orientasi layar (portrait / landscape).  
**Hasil**  
![Tugas 2 Nomor 1](screenshots/tugas2_nomor1.png)

### Nomor 2  
Mengimplementasikan layout yang berbeda untuk ukuran layar kecil (mobile) dan besar (tablet/desktop).  
**Hasil**  
![Tugas 2 Nomor 2](screenshots/tugas2_nomor2.png)