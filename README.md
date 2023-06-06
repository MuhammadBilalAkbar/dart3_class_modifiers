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
- 19K: https://youtu.be/dBwvc-U8q-c?t=1359
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

- 213K: https://youtu.be/vgg9T4_0CNA
- 14K: https://youtu.be/mlVYooy93sE
- 56K: https://youtu.be/hee-ZuJ9XOk
- 203K: https://youtu.be/H0OetoieSDQ
- 30K: https://youtu.be/RFGEzkBa834
- 3.9K: https://youtu.be/8pYAeX9a6v8
- 7.6K: https://youtu.be/9FWRMp5TgAk
- 2.9K: https://youtu.be/UXyWWEaLr70
- https://www.w3schools.com/java/java_modifiers.asp
- https://www.javatpoint.com/access-modifiers
- https://www.mygreatlearning.com/blog/the-access-modifiers-in-java/
- https://docs.oracle.com/javase/tutorial/reflect/class/classModifiers.html
- https://www.javatpoint.com/access-modifiers
- https://www.cosmiclearn.com/swift/accessmodifiers.php
- https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/
- https://www.programiz.com/swift-programming/access-control
- https://www.tutorialspoint.com/swift/swift_access_control.htm
- https://medium.com/analytics-vidhya/access-specifier-in-swift-4c6698eb3577
- https://abhimuralidharan.medium.com/swift-3-0-1-access-control-9e71d641a56c
- https://www.programiz.com/swift-programming/access-control
- https://blog.logrocket.com/understanding-inheritance-react-native/
- https://www.itechempires.com/2019/09/what-is-access-modifiers-and-how-to-use-access-modifiers-in-typescript/

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

1. In this video lesson, you will learn how to use class modifiers (for adding restrictions) in Dart
   to control visibility, force encapsulation, enable inheritance, facilitate polymorphism, and
   improve code.
2. Main Points:
    - Abstract
    - Base
    - Interface
    - Final
    - Sealed
    - Mixin
3. This is how you can use class modifiers in dart according to your own requirements to add
   restrictions to classes and their fields and methods.

**The Structured Main Content**

# Class Modifiers

Class modifiers control how a class or mixin can be used, both within their library or outside of
their library.

Modifier keywords come before a class or mixin declaration. For example, writing `abstract class`
defines an abstract class. The full set of modifiers that can appear before a class declaration
are:

- [abstract](#abstract)
- [base](#base)
- [final](#final)
- [interface](#interface)
- [sealed](#sealed)
- [mixin](#mixin)

**Only the `base` modifier can appear before a `mixin` declaration.**

The modifiers do not apply to other declarations like `enum`, `typedef`, or `extension`.

When deciding whether to use class modifiers, consider the intended uses of the class, and what
behaviors the class needs to be able to rely on.

**Exhaustive** means includes all possibilities which can occur.

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

To define a class that doesn’t require complete implementation of its entire interface, use
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

**You must mark any class which implements or extends a base class as base, final, or sealed.** This
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
and abstract modifiers for an abstract interface class. It is a true interface in dart.

## final

To close the type hierarchy, use the final modifier. It does not allow to overwritten data coming
from superclass by disallowing both inheritance and implementation prevents subtyping entirely.
This guarantees:

- You can safely add incremental changes to the API.
- You can call instance methods knowing that they haven’t been overwritten in a third-party
  subclass.

Final classes can be extended or implemented within the same library. The final modifier surrounds
the effects of base, and therefore any **subclasses must also be marked base, final, or sealed**.

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
switch over those subtypes that is statically ensured to be exhaustive(includes all possibilities).

The sealed modifier prevents a class from being extended or implemented outside its own library.
Sealed classes are implicitly abstract.

- They cannot be constructed themselves.
- They can have factory constructors.
- They can define constructors for their subclasses to use.

Subclasses of sealed classes are, however, not implicitly abstract.

The compiler is aware of any possible direct subtypes because they can only exist in the same
library. This allows the compiler to alert you when a switch does not exhaustively(including all
possibilities) handle all possible subtypes in its cases:

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

If you don’t want exhaustive(includes all possibilities) switching, or want to be able to add
subtypes later without breaking the API, use the final modifier.

## mixin

required for mixin (usage of `with`)

For base and final class, others subclasses extending or implementing from base or final class in
the same library must be base, final or sealed.

mixin allows for the reuse of a class’s code in multiple class hierarchies.

## Combining modifiers

You can combine some modifiers for layered restrictions. A class declaration can be, in order:

1. (Optional) abstract, describing whether the class can contain abstract members and prevents
   instantiation.
2. (Optional) One of base, interface, final or sealed, describing restrictions on other libraries
   subtyping the class.
3. (Optional) mixin, describing whether the declaration can be mixed in.
4. The class keyword itself.

You can’t combine some modifiers because they are contradictory, redundant, or otherwise mutually
exclusive(disjoint):

- abstract with sealed. A sealed class is always implicitly abstract.
- interface, final or sealed with mixin. These access modifiers prevent mixing in.

## Summary

**base**

can not use `implements`. It's useful for ensuring all private members are retained. Disallow
overriding the constructor.

**interface**

can not use inherit from (no usage of `extends` or `with`). It's useful for defining a contract for
others to implement.

**sealed**

sealed class can not be instantiated. It is implicitly abstract.

It prevents other classes from extending or implementing it outside of the same library.

It is exhaustive (all direct subtypes (excluding indirect subtypes) of a sealed class must be
covered in switch statement).

**final**

can not inherit or implement (no usage of `extends`, `with` or `implements`) outside of the same
library.

It is kind of like declaring a final variable. Once it is initialized, you can't change it.

It's useful for closing the type hierarchy so that no such subclasses are possible.

As a sample benefit, this allows the API owner to add new members without risking breaking changes
to the consumers of the API.