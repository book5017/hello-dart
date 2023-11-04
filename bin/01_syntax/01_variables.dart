late String description;

void main(List<String> arguments) {

  var name = 'Bob';

  String? name1;  // Nullable type. Can be `null` or string.

  String name2;   // Non-nullable type. Cannot be `null` but can be string.

  late String temperature = readThermometer(); // Lazily initialized.
  print(name1);

  var foo = const [];
  final bar = const [];
  const baz = []; // Equivalent to `const []`

  foo = [1, 2, 3]; // Was const []

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  print('map: $map');
}

String readThermometer() {
  return 'temperature';
}