void main() {
  String? name;
  name = null;
  print(name);

  if (name != null) {
    print(name);
  } else {
    print("Name is not set");
  }

  String lastName = "Smith";
  print(lastName);
}
