void main() {
  var list = [1, 2,3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var NIM = [2,3,4,1,7,2,0,1,7,5];
  var list4 = [...list3, ...NIM];
  print(list4);

  bool promoActive = true ;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

// Langkah 2
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab: 
// Hasilnya adalah error. Pada kode tersebut variabel list1 tidak pernah dideklarasikan. 
// Pembenarannya:
// Dengan mengganti variabel list1 menjadi list.

// Langkah 3
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
// Jawab:
// Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

// Langkah 4
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.
// Jawab:
// Variabel promoActive belum pernah dideklarasikan, sehingga hasil run adalah error.
// Ketika sudah dideklarasikan, maka ketika promoActive bernilai true, hasilnya adalah ['Home', 'Furniture', 'Plants', 'Outlet']
// Ketika promoActive bernilai false, hasilnya adalah ['Home', 'Furniture', 'Plants']

// Langkah 5
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.
// Jawab:
// Variabel login belum pernah dideklarasikan, sehingga hasil run adalah error.
// Ketika sudah dideklarasikan, maka ketika login bernilai Manager, hasilnya adalah ['Home', 'Furniture', 'Plants', 'Inventory']
// Ketika login bernilai selain Manager, hasilnya adalah ['Home', 'Furniture', 'Plants']

// Langkah 6
// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.
// Jawab:
// Hasilnya tidak error. pada kode tersebut listOfStrings dibuat dengan Collection For, artinya kita bisa menambahkan elemen ke dalam list secara dinamis dengan perulangan.