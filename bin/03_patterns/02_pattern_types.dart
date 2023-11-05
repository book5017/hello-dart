void main(List<String> arguments) {

  ///////////////////////////////////////////////////////////////////////
  // Logical-or
  // var isPrimary = switch (color) {
  //   Color.red || Color.yellow || Color.blue => true,
  //   _ => false
  // };

  ///////////////////////////////////////////////////////////////////////
  // Logical-and
  switch ((1, 2)) {
  // Error, both subpatterns attempt to bind 'b'.
    case (var a, var b) && (var c, var d): // ...
  }

  ///////////////////////////////////////////////////////////////////////
  // Cast
  (num, Object) record = (1, 's');
  var (i as int, s as String) = record;


  ///////////////////////////////////////////////////////////////////////
  // Null-check
  String? maybeString = 'nullable with base type String';
  switch (maybeString) {
    case var s?:
    // 's' has type non-nullable String here.
  }

  ///////////////////////////////////////////////////////////////////////
  // Constants

  const number = 1;
  switch (number) {
  // Matches if 1 == number.
    case 1: // ...
  }

  ///////////////////////////////////////////////////////////////////////
  // Variable

  switch ((1, 2)) {
  // 'var a' and 'var b' are variable patterns that bind to 1 and 2, respectively.
    case (var a, var b): // ...
    // 'a' and 'b' are in scope in the case body.
  }

  ///////////////////////////////////////////////////////////////////////
  // Identifier

  const c = 1;
  switch (2) {
    case c:
      print('match $c');
    default:
      print('no match'); // Prints "no match".
  }

  ///////////////////////////////////////////////////////////////////////
  // List
  const a = 'a';
  const b = 'b';
  var obj = [a, b];
  switch (obj) {
  // List pattern [a, b] matches obj first if obj is a list with two fields,
  // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }

  ////////////////////////////////////////////////////////////////////////
  // Rest element

  var [a1, b1, ..., c1, d1] = [1, 2, 3, 4, 5, 6, 7];
// Prints "1 2 6 7".
  print('$a1 $b1 $c1 $d1');

  var [a2, b2, ...rest, c2, d2] = [1, 2, 3, 4, 5, 6, 7];
// Prints "1 2 [3, 4, 5] 6 7".
  print('$a2 $b2 $rest $c2 $d2');


  ////////////////////////////////////////////////////////////////////////
  // Record
  var (myString: foo, myNumber: bar) = (myString: 'string', myNumber: 1);


  ////////////////////////////////////////////////////////////////////////
  // Object
  /**
  switch (shape) {
  // Matches if shape is of type Rect, and then against the properties of Rect.
    case Rect(width: var w, height: var h): // ...
  }
  // Binds new variables x and y to the values of Point's x and y properties.
  var Point(:x, :y) = Point(1, 2);

   **/

  ////////////////////////////////////////////////////////////////////////
  // Wildcard
  var list = [1, 2, 3];
  var [_, two, _] = list;
}
///////////////////////////////////////////////////////////////////////
// Relational
String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => ''
  };
}