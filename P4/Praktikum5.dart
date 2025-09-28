void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

    (String, int) mahasiswa = ('Kamila', 2341720175);
    print(mahasiswa);
    var mahasiswa2 = ('Kamila', a: 2341720175, b: true, 'last');

  print(mahasiswa2.$1); // Prints '
  print(mahasiswa2.a); // Prints 
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

// Langkah 2
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab: 
// Kode tersebut tidak error. Record adalah tipe data yang memungkinkan menyimpan beberapa nilai berbeda dalam satu variabel tanpa harus membuat class. Record bisa punya positional fields dan named fields. Pada kode tersebut:
// - Positional fields: 'first' (index 0), 'last' (index 1)
// - Named fields: a: 2, b: true

// Langkah 3
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.
// Jawab:
// Hasilnya tidak error. Fungsi tukar adalah menerima sebuah record (int, int) kemudian memecahnya ke dalam variabel a dan b, lalu mengembalikan record baru dengan posisi ditukar.

// Langkah 4
// Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!
// Jawab:
// Kode tersebut error. Pembenaran dan Inisialisasi field nama dan NIM:

// Langkah 5
// Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
/// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
/// Jawab:
/// Menampilkan isi record mahasiswa2 dengan mengakses fieldnya satu per satu.

