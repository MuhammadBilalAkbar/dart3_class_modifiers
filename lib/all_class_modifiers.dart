class NormalClass {}

base class BaseClass {}

interface class InterfaceClass {}

final class FinalClass {}

mixin class MixinClass {}

abstract class AbstractClass {}

sealed class SealedClass {}

/// InterfaceClass can be instantiated and implemented. It can not be extended.
final interfaceClass = InterfaceClass();
// class Interface1 extends InterfaceClass {}
class Interface3 implements InterfaceClass {}
// base class Interface2 with InterfaceClass {}

/// FinalClass can only be instantiated.
final finalClass = FinalClass();
// base class Final1 extends FinalClass {}
// base class Final3 implements FinalClass {}
// base class Final2 with FinalClass {}

/// MixinClass is similar to NormalClass except it can also be mixed using `with` keyword.
final mixinClass = MixinClass();
class Mixin1 extends MixinClass {}
class Mixin3 implements MixinClass {}
class Mixin2 with MixinClass {}

/// SealedClass can not be instantiated, extended, implemented, and mixed.
// final sealedClass = SealedClass();
// class SealedClass1 extends SealedClass {}
// class SealedClass3 implements SealedClass {}
// class SealedClass2 with SealedClass {}

// You can combine some modifiers for layered restrictions. For example, a class declaration can be:
// The specific restrictions that apply to a class or mixin will depend on the combination of modifiers that are used.
// e.g., A class that is declared with the abstract modifier cannot be instantiated, but it can be extended by other classes. If the same class is also declared with the final modifier, then it cannot be extended by other classes at all.
// abstract final: A class that cannot be instantiated or extended by other classes.
// base interface: A class that can be extended by other classes and implemented by other classes.
// sealed mixin: A class that cannot be extended by other classes from outside of its own library and can be mixed in to other classes.