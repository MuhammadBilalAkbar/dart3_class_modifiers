import 'all_class_modifiers.dart';

/// `with` keyword is used for mixin class only

/// NormalClass can construct, extend, and implement
final normalClass = NormalClass();

class Normal1 extends NormalClass {}

// class Normal2 with NormalClass {}

class Normal3 implements NormalClass {}

/// AbstractClass can extend and implement
// final abstractClass = AbstractClass();

class Abstract1 extends AbstractClass {}

// class Abstract2 with AbstractClass {}

class Abstract3 implements AbstractClass {}

/// BaseClass can construct and extend
final baseClass = BaseClass();

base class Base1 extends BaseClass {}

// base class Base2 with BaseClass {}

// base class Base3 implements BaseClass {}

/// InterfaceClass can construct and implement
final interfaceClass = InterfaceClass();

// class Interface1 extends InterfaceClass {}

// base class Interface2 with InterfaceClass {}

class Interface3 implements InterfaceClass {}

/// FinalClass can only construct
final finalClass = FinalClass();

// class Final1 extends FinalClass {}

// base class Final2 with FinalClass {}

// class Final3 implements FinalClass {}

/// MixinClass is similar to NormalClass except it can also use `with` keyword
final mixinClass = MixinClass();

class Mixin1 extends MixinClass {}

class Mixin2 with MixinClass {}

class Mixin3 implements MixinClass {}
