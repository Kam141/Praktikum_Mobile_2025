void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 2,
    };

    print(gifts);
    print(nobleGases);

  var mhs1 = Map<String, String>();
    mhs1['Nama'] = 'Kamila';
    mhs1['NIM'] = '23541720175';

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Kamila';
  mhs2[2] = '23541720175';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(mhs1);
  print(mhs2);

}

// Langkah 2
// Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
// Jawab: 
// - gifts adalah Map dengan key bertipe String ('first', 'second', 'fifth') dan value yang campuran (String dan int). Dart akan otomatis menganggap tipenya Map<String, Object?>.
// - nobleGases adalah Map dengan key bertipe int (2, 10, 18) dan value campuran (String dan int). Dart akan otomatis menganggap tipenya Map<int, Object?>.
// - print() menampilkan isi Map dalam format {key: value, ...}.

// Langkah 3
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!
// Jawab: Tidak terdapat error. 
// - gifts dibuat dengan nilai campuran (String dan int). Dart akan menganggap tipenya Map<String, Object?>. 
// - nobleGases dibuat dengan key int dan value campuran (String dan int). Dart akan menganggap tipenya Map<int, Object?>.
// - mhs1 dan mhs2 dibuat kosong.
