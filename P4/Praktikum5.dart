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