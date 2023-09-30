// Library b.dart
import 'a.dart';

// Can be constructed
final myVehicle = Vehicle();

// // ERROR: Cannot be extended/inherited
// class Car extends Vehicle {
//   int passengers = 4;
// // ...
// }

//   // ERROR: Cannot be implemented
// class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // ...
//   }
// }
