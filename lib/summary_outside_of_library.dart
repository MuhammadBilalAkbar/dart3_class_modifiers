import 'summary_inside_of_library.dart';

/// `with` keyword is used for mixin class only

/// NormalClass can be instantiated, extended, and implemented.
final normalClass = NormalClass();
class Normal1 extends NormalClass {}
class Normal2 implements NormalClass {}

/// AbstractClass can be extended and implemented. It can not be instantiated.
// final abstractClass = AbstractClass();
class Abstract1 extends AbstractClass {}
class Abstract2 implements AbstractClass {}

/// BaseClass can be constructed and extended. It can not be implemented.
final baseClass = BaseClass();
base class Base1 extends BaseClass {}
// base class Base2 implements BaseClass {}

/// InterfaceClass can be instantiated and implemented. It can not be extended.
final interfaceClass = InterfaceClass();
// class Interface1 extends InterfaceClass {}
class Interface2 implements InterfaceClass {}

/// FinalClass can only be instantiated.
final finalClass = FinalClass();
// final class Final1 extends FinalClass {}
// final class Final2 implements FinalClass {}

/// MixinClass is similar to NormalClass except it can also be mixed using `with` keyword.
final mixinClass = MixinClass();
class Mixin1 extends MixinClass {}
class Mixin2 implements MixinClass {}
class Mixin3 with MixinClass {}

/// SealedClass can not be instantiated, extended, implemented, and mixed outside of its library
// final sealedClass = SealedClass();
// class SealedClass1 extends SealedClass {}
// class SealedClass2 implements SealedClass {}
// class SealedClass3 with SealedClass {}

// You can combine some modifiers for layered restrictions. For example, a class declaration can be:
// The specific restrictions that apply to a class or mixin will depend on the combination of modifiers that are used.
// e.g., A class that is declared with the abstract modifier cannot be instantiated, but it can be extended by other classes. If the same class is also declared with the final modifier, then it cannot be extended by other classes at all.
// abstract final: A class that cannot be instantiated or extended by other classes.
// base interface: A class that can be extended by other classes and implemented by other classes.
// sealed mixin: A class that cannot be extended by other classes from outside of its own library and can be mixed in to other classes.