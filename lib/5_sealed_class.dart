sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Cannot be instantiated
// final myVehicle = Vehicle();

// Subclasses can be instantiated
final myCar = Car();

// String getVehicleSound(Vehicle vehicle) {
// // ERROR: The switch is missing the Bicycle subtype or a default case.
//   return switch (vehicle) {
//     Car() => 'vroom',
//     Truck() => 'VROOOOMM',
//   };
// }
