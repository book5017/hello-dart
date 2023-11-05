import '12_a/base_vehicle.dart';
//
// Can be constructed
Vehicle myVehicle = Vehicle();

// Can be extended
base class Car extends Vehicle {
  int passengers = 4;
// ...

}
// To enforce inheritance of a class or mixin’s implementation, use the base modifier. A base class disallows implementation outside of its own library.
// ERROR: Cannot be implemented
base class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
  }
}