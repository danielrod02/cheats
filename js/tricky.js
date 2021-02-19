'use strict';


/*
    There are a set of topics that are (or could) be difficult or have their caveats
    in every programming language:
        Everything related with OOP (how to define a class, what OOP constructs are avaliable, 
            how does the self or this work, operator overlading, how is inheritance handled by the language...)
        Variable scopes (and scopes in general)
        Parameter default values evaluation (and parameter mechanisms in general)
        Falsy values and comparison
        Modules (and namespaces and stuff)
        Destructuring and spreading/unpacking of values
*/


// Remember that ES6 classes are fundamentally syntactic sugar to the prototype model of JS
// still, there are some particularities regarding ES6 classes

/*
- First, a function created by class is labelled by a special internal property [[FunctionKind]]:"classConstructor".
    Unlike a regular function, it must be called with new
- Class methods are non-enumerable. A class definition sets enumerable flag to false for all methods in the "prototype"
- Classes always use strict. All code inside the class construct is automatically in strict mode
*/

/* There can only be one parent class per class */
class MyClass extends ParentClass) {
    thisIsAPublicClassField = 'public static field'; // The important difference of class fields is that they are set on 
                                               // individual objects, not User.prototype (much like props set inside 
                                               // the constructor())
                                               // When initializing fields, `this` refers to the class constructor
    /* Class field DONT have to be defined at the top of the class.
        Class field and arrow functions can be used to create bound methods that dont loose the value 
        of `this` when theyre passed around. Example of this is after method2()
    */

    /* According to the specification, if a class extends another class and has no constructor, then the following “empty” 
    constructor is generated:
    class Rabbit extends Animal {
      // generated for extending classes without own constructors
      constructor(...args) {
        super(...args);
      }
    } */
    /* Use `super.method(...)` to call a parent method.
    Use `super(...)` to call a parent constructor (inside our constructor only). */
    // CONSTRUCTORS IN INHERITING CLASSES MUST CALL SUPER(...), AND (!) DO IT BEFORE USING THIS
    constructor(prop1, prop2 /*...*/) {
        super();
        this.prop1 = prop1;
        this.prop2 = prop2;
    } // Notice that there are no commas separating the class methods
    method1() {

    }
    method2() {

    }
    boundMethod = () => {
        return "some value";
    } // No semicolon here
    // You can create getters and setters this way
    get name() {
        return this._name;
    }

    set name(value) {
        this._name = value;
    }
    // You can created methods with computed names with no problem
    [this.name]() {
        /**/
    }
    [Symbol.for('especial-prop')]() {
        /**/
    }
}

// You can also create classes like this
let SomeClass = class {
    constructor() {

    }
};
let OtherClass = class Classy {
    constructor() {
        
    }
}