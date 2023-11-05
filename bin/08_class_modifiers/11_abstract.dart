// Library a.dart
abstract class Vehicle {
  void moveForward(int meters);
  void moveBackward(int meters){
    print('moved backward $meters');
  }
}
// Error: Cannot be constructed
// Vehicle myVehicle = Vehicle();

// Can be extended
class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
  }

}

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }

  @override
  void moveBackward(int meters) {
    // TODO: implement moveBackward
  }
}