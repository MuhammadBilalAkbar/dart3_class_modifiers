// Library a.dart
sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

/// If Vehicle class is `abstract` then switch statement does not force to write all possible cases and it shows no output on console.
/// But if Vehicle class is `sealed` then switch statement forces to write all possible cases.
// String getVehicleSound(Vehicle vehicle) {
// // ERROR: The switch is missing the Bicycle subtype or a default case.
//   return switch (vehicle) {
//     Car() => 'vroom',
//     Truck() => 'VROOOOMM',
//   };
// }
