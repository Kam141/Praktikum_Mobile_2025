void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{}; 
  Set<String> names2 = {}; 

  // Menggunakan .add()
  names1.add("Kamila 111");  

  // Menggunakan .addAll()
  names2.addAll({"Kamila 111", "23541720175"});  

  print(names1);
  print(names2);
}

// Langkah 2
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab: 

// - var halogens = {...}; dengan kurung kurawal {} tanpa pasangan key: value akan dibuat sebagai Set di Dart, bukan Map. 
//   Set merupakan koleksi unik yang tidak menyimpan duplikat, dan tidak menjamin urutan (walaupun kadang terlihat urut, 
//   sebenarnya tidak dijamin).
// - print(halogens) akan menampilkan isi set dalam tanda {}.

// Langkah 3
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen 
// nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, 
// nanti kita coba di praktikum selanjutnya.
