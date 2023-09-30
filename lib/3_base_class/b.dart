// Library b.dart
import 'a.dart';

// Can be constructed
final myVehicle = Vehicle();

// Can be extended/inherited
base class Car extends Vehicle {
  int passengers = 4;
// ...
}

// ERROR: Cannot be implemented
// base class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // ...
//   }
// }
