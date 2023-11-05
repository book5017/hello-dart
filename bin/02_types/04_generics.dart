void main(List<String> arguments) {


  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  var nameSet = Set<String>.from(names);
  print(nameSet);

  // var views = Map<int, View>();

  var names2 = <String>[];
  names2.addAll(['Seth', 'Kathy', 'Lars']);
  print(names2 is List<String>); // true
}