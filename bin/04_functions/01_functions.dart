
var _nobleGases = [];
bool topLevel = true;

void main(List<String> arguments) {



  ///////////////////////////////////////////////////////////////////////
  // Functions as first-class objects
  void printElement(int element) {
    print(element);
  }

  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');

  ///////////////////////////////////////////////////////////////////////
  // Anonymous functions

  const list2 = ['apples', 'bananas', 'oranges'];
  list2.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  list2
      .map((item) => item.toUpperCase())
      .forEach((item) => print('$item: ${item.length}'));

  ///////////////////////////////////////////////////////////////////////
  // Lexical scope

  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  ///////////////////////////////////////////////////////////////////////
  // Lexical closures

  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);

}
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble2(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;


///////////////////////////////////////////////////////////////////////
// Named parameters

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool? bold, bool? hidden}) {

}
void enableFlags2({bool bold = false, bool hidden = false}) {

}

// const Scrollbar({super.key, required Widget child});

///////////////////////////////////////////////////////////////////////
// Optional positional parameters
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String say2(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}