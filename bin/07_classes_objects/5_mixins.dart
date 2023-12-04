/////////////////////////////////////////////////////////
//Mixins are a way of defining code that can be reused in multiple class hierarchies
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
class Performer {}
class Person {}
mixin Aggressive {}
mixin Demented{}
class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  String? name;
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
void main() {
  // var a = Aggressive();

}
/////////////////////////////////////////////////////////
// TODO on clause
// only classes that extend or implement the Musician class can use the mixin MusicalPerformer.
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}

// Mixins can’t have extends or with clauses, so neither can a mixin class.
// Classes can’t have an on clause, so neither can a mixin class.


/////////////////////////////////////////////////////////
// TODO abstract mixin class
abstract mixin class Musician2 {
  // No 'on' clause, but an abstract method that other types must define if 
  // they want to use (mix in or extend) Musician: 
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }
  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician2 { // Use Musician as a mixin
  @override
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }  
} 

class Novice extends Musician2 { // Use Musician as a class
  @override
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }  
} 