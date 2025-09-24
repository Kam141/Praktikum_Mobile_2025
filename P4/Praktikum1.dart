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

  
}