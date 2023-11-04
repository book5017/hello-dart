void main(List<String> arguments) {

  /////////////////////////////////////////////////////////////////////////////
  // Lists

  var list = [1, 2, 3];
  var list2 = [
    'Car',
    'Boat',
    'Plane',
  ];


  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.

  /////////////////////////////////////////////////////////////////////////////
  // Sets

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // Empty Set
  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  //TODO
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);


  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.

  /////////////////////////////////////////////////////////////////////////////
  // Maps

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts2 = Map<String, String>();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

// constantMap[2] = 'Helium'; // This line will cause an error

  /////////////////////////////////////////////////////////////////////////////
  // Operators

  //spread operator (...)
  var list3 = [1, 2, 3];
  var list4 = [0, ...list3];
  assert(list4.length == 4);

  // null-aware spread operator (...?)
  var list5 = [0, ...?list3];
  // assert(list5.length =  = 1);
  print(list5);
}