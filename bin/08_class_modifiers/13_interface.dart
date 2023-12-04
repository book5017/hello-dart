import '12_a/interface_vehicle.dart';

// To define an interface, use the interface modifier.
// Libraries outside of the interface’s own defining library can implement the interface, but not extend it.
// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited
class Car extends Vehicle {
  int passengers = 4;
// ...
}

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}