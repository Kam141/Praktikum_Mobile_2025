void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final list = [null, 'Kamila HPA', 2341720175, null, null];
  assert(list.length == 5);
  assert(list[1] == 'Kamila HPA');
  print(list.length);
  print(list[1]);

  final list2 = List<String?>.filled(5, null); // list panjang 5, default null
  
  list2[1] = "Kamila 111";     // isi index ke-1 dengan Nama
  list2[2] = "23541720175";    // isi index ke-2 dengan NIM
  
  print(list2);

  //Langkah 2
  //   Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

  // Jawab: 
  // - Baris var list = [1, 2, 3] untuk membuat sebuah list berisi tiga elemen: [1, 2, 3].
  // - assert(list.length == 3) untuk memeriksa bahwa panjang list adalah 3. Karena benar, program lanjut.
  // - assert(list[1] == 2) untuk memeriksa bahwa elemen pada indeks ke-1 adalah 2. Karena benar, lanjut.
  // - print(list.length) untuk mencetak 3.
  // - print(list[1]) untuk mencetak 2.
  // - list[1] = 1 untuk mengganti elemen pada indeks ke-1 (sebelumnya 2) menjadi 1.
  // - assert(list[1] == 1) untuk memeriksa ulang bahwa indeks ke-1 sekarang bernilai 1. Karena benar, lanjut.
  // - print(list[1]) untuk mencetak 1

}