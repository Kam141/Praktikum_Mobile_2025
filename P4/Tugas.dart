// No 2
void greet(String name, int age) {
  print("Halo $name, umurmu $age tahun");
}

void greet1(String name, [String? title]) {
  print("Halo ${title ?? ""} $name");
}

void greet3({required String name, int age = 18}) {
  print("Halo $name, umur $age tahun");
}


void main() {
  greet("Kamila", 20); // memanggil fungsi greet dengan dua argumen   

  greet1("Kamila");          // tanpa title
  greet1("Kamila", "Dr.");   // dengan title

  greet3(name: "kamila");          // tanpa age, menggunakan default
  greet3(name: "kamila", age: 25); // dengan age
}

// No 2
// Jelaskan yang dimaksud Functions dalam bahasa Dart!
// Jawab: 
// Function adalah blok kode yang dapat dipanggil untuk 
// melakukan suatu tugas tertentu. Function digunakan agar kode lebih terstruktur, mudah dibaca, dan dapat digunakan kembali.

// No 3
// Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
// Jawab:
// 1. Positional Parameters: Parameter yang harus diisi sesuai urutan saat memanggil fungsi.
// 2. Optional Positional Parameters: Parameter yang opsional dan diapit oleh tanda kurung siku [].
// 3. Named Parameters: Parameter yang diidentifikasi dengan nama saat memanggil fungsi, diapit oleh tanda kurung kurawal {}.

// No 4
// Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
// Jawab:
// Di Dart, function diperlakukan sebagai first-class objects. Artinya, function dapat:
// - Disimpan dalam variabel
// - Diteruskan sebagai argumen ke fungsi lain
// - Dikembalikan sebagai nilai dari fungsi lain

// No 5
// Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
// Jawab: 
// Anonymous Function adalah function tanpa nama. Biasanya dipakai sekali atau sebagai parameter.

// No 6
// Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
// Jawab:
// - Lexical Scope: Variabel hanya bisa diakses sesuai scope (ruang lingkup) tempat dia didefinisikan.
// - Lexical Closure: Function bisa mengikat (capture) variabel dari scope luar walaupun scope itu sudah selesai dieksekusi.

// No 7
// Jelaskan dengan contoh cara membuat return multiple value di Functions!
// Jawab:
// Dart tidak bisa return lebih dari satu nilai secara langsung, tapi bisa dengan:
// - List
// - Map
// - Record (fitur Dart terbaru)
