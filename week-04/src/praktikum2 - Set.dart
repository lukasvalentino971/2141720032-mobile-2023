void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);


  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Lukas Valentino");
  names1.add("2141720032");

  names2.addAll({"Lukas Valentino", "2141720032"});

  print(names1);
  print(names2);
}