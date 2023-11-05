void main(List<String> arguments) {


  //////////////////////////////////////////////////////////
  // Matching
  var number = 1;
  switch (number) {
  // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }

  const a = 'a';
  const b = 'b';
  const obj = [a, b];
  switch (obj) {
  // List pattern [a, b] matches obj first if obj is a list with two fields,
  // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }

  //////////////////////////////////////////////////////////
  // TODO Destructuring

  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [aa, bb, cc] = numList;
  // ...and assigns them to new variables.
  print(aa + bb + cc);

  var list = ['b', 'c'];
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }

  //////////////////////////////////////////////////////////
  // Variable declaration
  // Declares new variables aaa, bbb, and ccc.
  var (aaa, [bbb, ccc]) = ('str', [1, 2]);

  //////////////////////////////////////////////////////////
  // Variable assignment
  var (a1, b1) = ('left', 'right');
  (b1, a1) = (a1, b1); // Swap.
  print('$a1 $b1'); // Prints "right left".

  //////////////////////////////////////////////////////////
  // TODO Switch statements and expressions

  var obj1 = 3;
  const first = 2;
  const last = 4;
  switch (obj1) {
  // Matches if 1 == obj.
    case 1:
      print('one');

  // Matches if the value of obj is between the
  // constant values of 'first' and 'last'.
    case >= first && <= last:
      print('in range');

  // Matches if obj is a record with two fields,
  // then assigns the fields to 'a' and 'b'.
    case (var a, var b):
      print('a = $a, b = $b');

    default:
  }

  // const color = Color.red;
  // var isPrimary = switch (color) {
  //   Color.red || Color.yellow || Color.blue => true,
  //   _ => false
  // };

  /**
   * switch (shape) {
      case Square(size: var s) || Circle(size: var s) when s > 0:
      print('Non-empty symmetric shape');
      }
   */

  var pair = (2, 3);
  switch (pair) {
    case (int a, int b):
      if (a > b) print('First element greater');
  // If false, prints nothing and exits the switch.
    case (int a, int b) when a > b:
    // If false, prints nothing but proceeds to next case.
      print('First element greater');
    case (int a, int b):
      print('First element not greater');
  }
  //
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  //////////////////////////////////////////////////////////
  // TODO For and for-in loops
  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

}