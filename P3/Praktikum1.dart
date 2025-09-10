void main() {
  String test = "true";
  if (test == "true") {
    print("Kebenaran");
  }

  String test2 = "test2";
  if (test2 == "test1") {
    print("Test1");
  } else if (test2 == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test2 == "test2") print("Test2 again");
}
