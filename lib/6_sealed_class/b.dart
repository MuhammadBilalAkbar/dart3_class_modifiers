// Library b.dart
import 'a.dart';

// // ERROR: Cannot be instantiated/constructed
// final myVehicle = Vehicle();
//
// // ERROR: Cannot be extended/inherited
// class Vehicle1 extends Vehicle {}
//
// // ERROR: Cannot be implemented
// class Vehicle2 implements Vehicle {}

// Subclasses can be instantiated/constructed, extended/inherited, implemented
final myCar = Car();
class Vehicle1 extends Car {}
class Vehicle2 implements Car {}