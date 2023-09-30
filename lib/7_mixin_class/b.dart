import 'a.dart';

// Multiple inheritance using `with` keyword
class Athlete with Jumping, Running {
  // Class definition
}

void main() {
  final athlete = Athlete();
  athlete.jump();
  athlete.run();
}

mixin Jumping {
  void jump() {
    print('Jumping...');
  }
}

mixin Running {
  void run() {
    print('Running...');
  }
}