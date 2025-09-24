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
