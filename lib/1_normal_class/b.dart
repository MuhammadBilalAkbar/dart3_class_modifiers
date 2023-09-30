// Library b.dart
import 'a.dart';

// Can be instantiated/constructed
final myVehicle = Vehicle();

// Can be extended/inherited
class Car extends Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}
