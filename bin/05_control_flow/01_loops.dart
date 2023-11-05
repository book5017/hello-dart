void main() {

  ////////////////////////////////////////////////////
  // For loops

  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  // for (final candidate in candidates) {
  //   candidate.interview();
  // }

  // for (final Candidate(:name, :yearsExperience) in candidates) {
  //   print('$name has $yearsExperience of experience.');
  // }


  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3
}