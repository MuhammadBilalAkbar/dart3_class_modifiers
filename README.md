# dart3_class_modifiers

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1. Research: Dart3 Class Modifiers (New Features)

- Keywords:
    - dart class modifiers
    - Dart class modifiers list
    - dart class constructor
    - dart class modifiers github
    - Dart class modifiers flutter
    - Dart class modifiers examples
    - Dart class modifiers list flutter
    - Dart class modifiers github flutter
    - dart mixin
    - dart interface
    - dart classes
    - dart sealed class
    - dart final, base and abstract class

- Video Title: Class Modifiers in Dart Language | New Features in Dart 3 | Class Modifiers with
  abstract, base, interface, final and sealed classes

## 2. Research: Competitors

**Flutter Videos/Articles**

- 4.9K: https://youtu.be/Od49lG0ez0o
- https://dart.dev/language/class-modifiers
- https://github.com/dart-lang/language/blob/main/accepted/future-releases/class-modifiers/feature-specification.md
- https://stevenosse.com/dart-3-in-depth-new-class-modifiers
- https://gwhyyy.com/dart-3-class-modifiers-explained-with-examples

  **Dart3 All Features:**
- 30K: https://youtu.be/KhYTFglbF2k
- 65K: https://youtu.be/yRlwOdCK7Ho?t=412
- 19K: https://youtu.be/dBwvc-U8q-c
- 2.3K: https://youtu.be/kJLLzrhMku4
- 1.6K: https://youtu.be/r51ARivU2GM
- 873: https://youtu.be/YGDYjtbx9Yg
- 442: https://youtu.be/7NsBBXyCX3s
- https://medium.com/dartlang/announcing-dart-3-53f065a10635
- https://medium.com/flutter-community/new-features-in-dart-3-0-7e95ad8d0b81
- https://codewithandrea.com/articles/whats-new-dart-3-introduction/
- https://proandroiddev.com/dart-3-0-revolutionizing-development-with-cutting-edge-features-a59e7b37aaf5
- https://www.sandromaglione.com/techblog/records-and-patterns-dart-language
- https://medium.com/@dnkibere/dart-3-records-pattern-matching-sealed-classes-and-more-12a9e3a52447
- https://blog.devgenius.io/dart-3-the-biggest-release-of-dart-yet-c9cf44ad428
- https://codelabs.developers.google.com/codelabs/dart-patterns-records#0
- https://www.infoworld.com/article/3696353/googles-dart-3-and-flutter-310-bring-big-changes.html

**Android/Swift/React Videos**

- _[Add here the high ranking video links that have many views, or are ranked high on YouTube ...]_
- _[e.g. 380K: https://www.youtube.com/watch?v=Nl54MJDR2p8]_

**Great Features**

In the Dart language, class modifiers provide a way to control the visibility and accessibility of
class members such as variables and methods. Class modifiers provide benefits related to
encapsulation, information hiding, accessibility control, code organization, and code maintenance.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/75742426/dart-sealed-class-compile-time-error-the-type-possibleerrors-is-not-exhausti

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video lesson, you will learn how to use class modifiers according to the requirements
   what you need.
2. _[What are the main points of this video lesson]_
    - _[Add here multiple main points ...]_
    - _[...]_
3. _[Out of 1. & 2. create 2-3 sentences that could be later used for recording the introduction of this video lesson]_

**The Structured Main Content**

# Class Modifiers

Class modifiers control how a class or mixin can be used, both within their library or outside of
their library.

Modifier keywords come before a class or mixin declaration. For example, writing `abstract class`
defines an abstract class. The full set of modifiers that can appear before a class declaration
include:

- abstract
- base
- final
- interface
- sealed
- mixin

Only the `base` modifier can appear before a mixin declaration. The modifiers do not apply to other
declarations like `enum`, `typedef`, or `extension`.

Only the `base` modifier can appear before a `mixin` declaration.

Many combinations don't make sense:

* `base`, `interface`, and `final` all control the same two capabilities so
  are mutually exclusive.
* `sealed` types cannot be constructed so it's redundant to combine with
  `abstract`.
* `sealed` types already cannot be mixed in, extended or implemented
  from another library, so it's redundant to combine with `final`,
  `base`, or `interface`.
* `mixin` as a modifier can obviously only be applied to a `class`
  declaration, which makes it also introduce a mixin.
* `mixin` as a modifier cannot be applied to a mixin-application `class`
  declaration (the `class C = S with M;` syntax for declaring a class). The
  remaining modifiers can.
* A `mixin` or `mixin class` declaration is intended to be mixed in,
  so its declaration cannot have an `interface`, `final` or `sealed` modifier.
* A `mixin` declaration cannot be constructed, so `abstract` is redundant.
* `enum` declarations cannot be extended, implemented, mixed in,
  and can always be instantiated, so no modifiers apply to `enum`
  declarations.

The remaining valid combinations and their capabilities are:

| Declaration | Construct? | Extend? | Implement? | Mix in? | Exhaustive? |
|--|--|--|--|--|--|
|`class`                    |**Yes**|**Yes**|**Yes**|No |No |
|`base class`               |**Yes**|**Yes**|No |No |No |
|`interface class`          |**Yes**|No |**Yes**|No |No |
|`final class`              |**Yes**|No |No |No |No |
|`sealed class`             |No |No |No |No |**Yes**|
|`abstract class`           |No |**Yes**|**Yes**|No |No |
|`mixin`                    |No |No |**Yes**|**Yes**|No |

## No modifier

To allow unrestricted permission to construct or subtype from any library, use a class or mixin
declaration without a modifier. By default, you can:

- `Construct` new instances of a class.
- `Extend` a class to create a new subtype.
- `Implement` a class or mixin’s interface.
- `Mix` in a mixin or mixin class.

## abstract

To define a class that doesn’t require a full, concrete implementation of its entire interface, use
the abstract modifier.

- Abstract classes can be extended and implemented.
- Abstract classes cannot be constructed from any library, whether its own or an outside library.
- Abstract classes often have abstract methods.

```dart
// Library a.dart
abstract class Vehicle {
  void moveForward(int meters);
}
```

```dart
// Library b.dart
import 'a.dart';

// Error: Cannot be constructed
// Vehicle myVehicle = Vehicle();

// Can be extended
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
```

If you want your abstract class to appear to be instantiable, define
a [factory constructor](https://dart.dev/language/constructors#factory-constructors).

## base

To enforce inheritance of a class or mixin’s implementation, use the base modifier. A base class
disallows implementation outside of its own library. This guarantees:

- The base class constructor is called whenever an instance of a subtype of the class is created.
- All implemented private members exist in subtypes.
- A new implemented member in a base class does not break subtypes, since all subtypes inherit the
  new member. (This is true unless the subtype already declares a member with the same name and an
  incompatible signature.)

You must mark any class which implements or extends a base class as base, final, or sealed. This
prevents outside libraries from breaking the base class guarantees.

```dart
// Library a.dart
base class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
```

```dart
// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// Can be extended
base class Car extends Vehicle {
  int passengers = 4;
// ...
}

// ERROR: Cannot be implemented
base class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}
```

## interface

To define an interface, use the interface modifier. Libraries outside of the interface’s own
defining library can implement the interface, but not extend it. This guarantees:

- When one of the class’s instance methods calls another instance method on this, it will always
  invoke a known implementation of the method from the same library.
- Other libraries can’t override methods that the interface class’s own methods might later call in
  unexpected ways. This reduces
  the [fragile base class problem](https://en.wikipedia.org/wiki/Fragile_base_class).

```dart
// Library a.dart
interface class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
```

```dart
// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited
// class Car extends Vehicle {
//   int passengers = 4;
// // ...
// }

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}
```

### abstract interface

The most common use for the interface modifier is to define a pure interface. Combine the interface
and abstract modifiers for an abstract interface class.

Like an interface class, other libraries can implement, but cannot inherit, a pure interface. Like
an abstract class, a pure interface can have abstract members.

## final

To close the type hierarchy, use the final modifier. This prevents subtyping from a class outside of
the current library. Disallowing both inheritance and implementation prevents subtyping entirely.
This guarantees:

You can safely add incremental changes to the API.
You can call instance methods knowing that they haven’t been overwritten in a third-party subclass.
Final classes can be extended or implemented within the same library. The final modifier encompasses
the effects of base, and therefore any subclasses must also be marked base, final, or sealed.

```dart
// Library a.dart
final class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
```

```dart
// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited
class Car extends Vehicle {
  int passengers = 4;
// ...
}

class MockVehicle implements Vehicle {
  // ERROR: Cannot be implemented
  @override
  void moveForward(int meters) {
    // ...
  }
}
```

## sealed

To create a known, enumerable set of subtypes, use the sealed modifier. This allows you to create a
switch over those subtypes that is statically ensured to be exhaustive(reports a compile-time error
if it’s possible for a value to enter a switch but not match any of the cases).

The sealed modifier prevents a class from being extended or implemented outside its own library.
Sealed classes are implicitly abstract.

- They cannot be constructed themselves.
- They can have factory constructors.
- They can define constructors for their subclasses to use.

Subclasses of sealed classes are, however, not implicitly abstract.

The compiler is aware of any possible direct subtypes because they can only exist in the same
library. This allows the compiler to alert you when a switch does not exhaustively handle all
possible subtypes in its cases:

```dart
sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Cannot be instantiated
Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated
Vehicle myCar = Car();

String getVehicleSound(Vehicle vehicle) {
// ERROR: The switch is missing the Bicycle subtype or a default case.
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
  };
}
```

If you don’t want exhaustive switching, or want to be able to add subtypes later without breaking
the API, use the final modifier.

## Combining modifiers

You can combine some modifiers for layered restrictions. A class declaration can be, in order:

1. (Optional) abstract, describing whether the class can contain abstract members and prevents
   instantiation.
2. (Optional) One of base, interface, final or sealed, describing restrictions on other libraries
   subtyping the class.
3. (Optional) mixin, describing whether the declaration can be mixed in.
4. The class keyword itself.

You can’t combine some modifiers because they are contradictory, redundant, or otherwise mutually
exclusive:

abstract with sealed. A sealed class is always implicitly abstract.
interface, final or sealed with mixin. These access modifiers prevent mixing in.
