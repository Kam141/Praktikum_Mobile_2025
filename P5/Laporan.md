# Laporan Praktikum Mobile - Flutter Dasar

**Nama**  : Kamila Habiba Putri Ananta  
**NIM**   : 2341720175  
**Kelas** : 3D  

---
## Praktikum
### Praktikum 1 - Text Widget
Menyambungkan laptop ke handphone dan menampilkan teks sederhana dengan style   

**Hasil**  
![Text Widget](hasil_praktikum/sambung.jpg)

---

### Praktikum 2 - Image Widget
Menampilkan gambar dari asset yang didefinisikan di `pubspec.yaml`.  

**Hasil**  
![Image Widget](hasil_praktikum/Screenshot2.png)

---

### Praktikum 3 - Dialog & Input/Selection Widget
Menampilkan dialog sederhana (AlertDialog) serta input teks menggunakan `TextField`.  

**Hasil**  
![Dialog](hasil_praktikum/alert.png)

![TextField](hasil_praktikum/textField.png)

---

### Praktikum 4 - Date & Time Picker
Menampilkan pilihan tanggal dan waktu menggunakan `showDatePicker` serta `showTimePicker`.  

**Hasil**  
![DatePicker](hasil_praktikum/datePicker.png)

![DatePicker2](hasil_praktikum/datePicker2.png)

---

# Tugas 

### Langkah 1: Membuat Project & Setup Awal  
Membuat project Flutter baru (misalnya `namer_app`), mengatur file `pubspec.yaml`, `analysis_options.yaml`, dan `main.dart` awal dari template.  
**Hasil**  
![Project Awal](hasil_praktikum/step1_project_setup.png)

---

### Langkah 2: Menjalankan Aplikasi & Hot Reload  
Menjalankan aplikasi di emulator/perangkat dan memodifikasi teks agar hot reload bekerja (UI langsung diperbarui).  
**Hasil**  
![Hot Reload](hasil_praktikum/step2_hot_reload.png)

---

### Langkah 3: Menambah Tombol “Next”  
Menambahkan tombol `ElevatedButton` agar pengguna dapat menghasilkan nama baru ketika ditekan. Menambahkan method `getNext()` di kelas `MyAppState` untuk menghasilkan `WordPair` baru, dan memanggilnya dalam callback tombol. 

**Hasil**  
![Tombol Next](hasil_praktikum/step3_button.png)

---

### Langkah 4: Mempercantik UI & Extract Widget  
Memisahkan widget menjadi bagian tersendiri, menambahkan `Padding`, `Card`, dan menerapkan tema agar tampilan lebih menarik.  
**Hasil**  
![UI Diperbaiki](hasil_praktikum/111.png)

![UI Diperbaiki](hasil_praktikum/step5_pretty_ui.png)
---

### Langkah 5: Menambahkan Fungsi Favorit (“Like”)  
Menambahkan properti `favorites` dalam `MyAppState`, serta method `toggleFavorite()` untuk menambah atau menghapus dari favorit. Menambahkan tombol like / ikon di UI.  
**Hasil**  
![Tombol Like](hasil_praktikum/step6_favorite.png)

---

### Langkah 6: Menambahkan Navigasi / NavigationRail  
Membuat tampilan multi-halaman (Home & Favorites) menggunakan `NavigationRail` dan mengganti `MyHomePage` menjadi `StatefulWidget` agar dapat merespon perubahan indeks navigasi.  
**Hasil**  
![NavigationRail](hasil_praktikum/step7_navigation.png)

---

### Langkah 7: Responsivitas & LayoutBuilder  
Menggunakan `LayoutBuilder` agar ketika layar cukup lebar, `NavigationRail` menampilkan label (extended).  
**Hasil**  
[![Responsif Layout](hasil_praktikum/layout.png)](hasil_praktikum/layout.mp4)

---

