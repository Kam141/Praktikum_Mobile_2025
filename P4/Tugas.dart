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