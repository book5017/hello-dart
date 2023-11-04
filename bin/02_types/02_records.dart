void main(List<String> arguments) {
  var record = ('first', a: 2, b: true, 'last');

  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Record type annotation in a variable declaration:
  (String, int) record2;

  // Initialize it with a record expression:
  record2 = ('A string', 123);


  // Record type annotation in a variable declaration:
  ({int a, bool b}) record3;

  // Initialize it with a record expression:
  record3 = (a: 123, b: true);

  /////////////////////////////////////////////////////////////////////////////

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  (int a, int b) recordAB2 = (1, 2);
  (int x, int y) recordXY2 = (3, 4);

  recordAB2 = recordXY2; // OK.

  /////////////////////////////////////////////////////////////////////////////

  var record4 = ('first', a: 2, b: true, 'last');

  print(record4.$1); // Prints 'first'
  print(record4.a); // Prints 2
  print(record4.b); // Prints true
  print(record4.$2); // Prints 'last'


  /////////////////////////////////////////////////////////////////////////////

  (num, Object) pair = (42, 'a');

  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.


  /////////////////////////////////////////////////////////////////////////////

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // Prints 'true'.

  /////////////////////////////////////////////////////////////////////////////
  //Since named field order is not part of a record’s shape, the order of named fields does not affect equality.
  //TODO
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color2 = (r: 1, g: 2, b: 3);

  print(point2 == color2); // Prints 'false'. Lint: Equals on unrelated types.


  /////////////////////////////////////////////////////////////////////////////

  // Returns multiple values in a record:
  (String, int) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  // Destructures using a record pattern:
    var (name, age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
  */
}
