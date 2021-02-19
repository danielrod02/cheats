<?php declare( strict_types = 1 );

/*
    There are a set of topics that are (or could) be difficult or have their caveats
    in every programming language:
        - Everything related with OOP (how to define a class, what OOP constructs are avaliable, 
            how does the self or this work, operator overlading, how is inheritance handled by the language...)
        - Variable scopes (and scopes in general)
        - Parameter default values evaluation (and parameter mechanisms in general)
        - Falsy values and comparison
        - Modules (and namespaces and stuff)
        - Destructuring and spreading/unpacking of values
        - Magic constants, predefined vars 

*/

// In php you can use these magic constants:
__LINE__;
__FILE__; // fully qualified path to php file being parsed
__DIR__;
__FUNCTION__;
__CLASS__;
__TRAIT__; // new in php 8
__METHOD__;
__NAMESPACE__;
Classname::class;

/*
 -------------------PHP VARIABLES ARE ASSIGNED BY VALUE-------------------
*/

// STRINGS
// You can use the string offset syntax on a string to address individual characters

// SCOPE
/*
Only functions can provide local scope. Unlike in other languages, in PHP you can’t
create a variable whose scope is a loop, conditional branch, or other type of block.
*/

// ALTERNATIVE CONTROL STATEMENT SYNTAX (IF, FOR, WHILE...)

// FUNCTIONS
/*
    CAVEATS:
        - By default, the code inside a function doesnt have access to variables declared outside of it (global vars),
            only to super-globals.
        - To allow a function to access a global variable, you can use the `global` keyword inside the function to
            declare the variable within the function (pretty much like in python).
        - Defaulted parameters must be listed after all parameters that do not have default values
*/
// The syntax to define a function is:
function functionName(
    string $arg1 = 'some default val', 
    int $arg2,
    &$byRef, /* Only variables—and not constants—can be supplied to parameters declared as passing by reference. 
            However, you may assign a default value to parameters passed by reference (in the same manner as you provide 
            default values for parameters passed by value) */
    ...$restOfTheArgs /* `...` is called the splat operator */
): int {
    static $staticVar = 0; /*A static variable retains its value between all calls to the function and is initialized 
                        during a script’s executiononly the first time the function is called. */
    $numberOfParams = func_num_args();
    $paramsArrays = func_get_args();
    $valueOfFirstParam =  func_get_arg(0);
            /*
                The result of any of the three `func` functions above cannot directly be used as a parameter to another
                function. Instead, you must first set a variable to the result of the function, and then use
                that in the function call.
            */
    return ++$staticVar;
}

$someAnonymousFunc = function(...$args) {
    /* Do something */
};
$closure = function(...$args) use ($someAnonymousFunc, $otherVar) {
    /* the variables indicated to be `use`d are captured by val, so if you modify them, code outside the function
    wont see those changes, unless you preprend the variable with `&`, then the closure will get the variable by ref */
    /* Do something with $someAnonymousFunc (from the outer enclosing scope, which is not necessarily the global scope) */
};

// Arrow functions support the same features as anonymous functions, except that using variables from the parent scope 
// is always automatic. SO YOU DONT HAVE TO UTILIZE `use`. 
// They capture the outer variables BY-VALUE, so you CANT modify outer variables inside an arrow function.
// You do can modify outer variables from inside regular anonymous functions using the `&` op, like this:
//          function() use (&$outer) {   }
// this cant be done using arrow funcs.
$arrowFunc = fn($param) => $enclosing_scope_var++;


/*
 $$$$$$\   $$$$$$\  $$$$$$$\  
$$  __$$\ $$  __$$\ $$  __$$\ 
$$ /  $$ |$$ /  $$ |$$ |  $$ |
$$ |  $$ |$$ |  $$ |$$$$$$$  |
$$ |  $$ |$$ |  $$ |$$  ____/ 
$$ |  $$ |$$ |  $$ |$$ |      
 $$$$$$  | $$$$$$  |$$ |      
 \______/  \______/ \__|      
*/

// abstract (must be implemented by the subclass), final...

// To create a new object
$someObj = new MyClass();
$otherObj = new MyClass; // You could instatiate the obj like this, but dont, for syntax consistency
// to access regular public properties
echo $someObj->somePublicProp;
echo "Here is: {$someObj->somePublicProp}";
echo $someObj->somePublicMethod();
// to call or access static properties
echo $someObj::staticMethod(); // static methods cannot access instance properties or methods

/*
FROM THE PHP LANG REF:
    One of the key-points of PHP OOP that is often mentioned is that "objects are passed by references by default". 
    This is not completely true. This section rectifies that general thought using some examples.

    A PHP reference is an alias, which allows two different variables to write to the same value. In PHP, 
    an object variable doesn't contain the object itself as value. It only contains an object identifier which 
    allows object accessors to find the actual object. When an object is sent by argument, returned or assigned 
    to another variable, the different variables are not aliases: they hold a copy of the identifier, which points 
    to the same object.
*/

// If you want to create a true copy of an object, you use the clone operator
$f = new Person("Pua", 35);
$b = clone $f; // make a copy
$b->setName("Hei Hei");// change the copy
/*When you use the clone operator to create a copy of an object and that class declares
the __clone() method, that method is called on the new object immediately after it’s
cloned.*/

/*
methods on an instance that can be called only by methods within the same class should 
be declared `private`. Finally, methods declared as `protected` can be called only from within
the object’s class methods and the class methods of classes inheriting from the class.

Use the parent::method() notation to access an overridden method on an
object’s parent class
*/
class MyClass extends ParentClass 
    implements interface1, interface2, interfaceN {
        use trait1, trait2, traitN;

        /* The following are property declarations. Property declarations are optional and are 
        simply a courtesy to whomever maintains your program. It’s good PHP style to declare 
        your properties, but you can add new properties at any time.
        */
        public $pubProp = "some val"; // You can assign default values to properties. Those default values must be simple constants
        public $otherPublic;
        private $privateProp = "other val";
        private $otherPrivate;
        protected $protectedProp = 'vallll';
        protected $otherProtected;

        const CONSTANT = 'constant value';

        public function __construct(string $fullName, int $age) {
            parent::__construct($fullName); // You can invoke the parent constructor this way
            
            $this->$otherPublic = $fullName;
            $this->$otherPrivate = $age;
            $this->$otherProtected = self::CONSTANT;
            $this->nonDeclaredProp = 'vallllue'; // is totally ok to create new props here, props
                                            // that werent declared in the above block
        }

        // If you declare a method using the final keyword, subclasses cannot override 
        // that method
        final public function thisMethodCantBeOverridedInSubclasses(): void {
            parent::someMethod(); // calls the method `someMethod` of ParentClass (which the parent class)
        }

        static public function staticMethod(): void {

        }
        /*
        If a property is accessed on an object that doesn’t exist, and if the __get() or
        __set() method is defined for the object’s class, that method is given an opportunity
        to either retrieve a value or set the value for that property.
        */
}

if ($object instanceof Animal) {
// do something
}

/*
    Traits can access properties from `$this` or `self` or `parent`, modify them, or whatever else,
    but is your responsibility to ensure those properties are defined in the class
    inside you are using the trait
*/
trait SomeTrait {
    use AnotherTrait, AliasedTrait;
}

?>




<?php 
/*
    The following blocks will show the control statements alternative syntaxes:
        if, while, for, foreach, and switch
    The difference is very simple:
        In each case, the basic form of the alternate syntax is to change the opening 
        brace to a colon (:) and the closing brace to
        `endif`;, `endwhile`;, `endfor`;, `endforeach`;, or `endswitch`;, respectively.
    ---------------KEEP IN MIND----------------
    MIXING SYNTAXES IN THE SAME CONTROL BLOCK IS NOT SUPPORTED.
*/
?>

<?php if ($user_validated): ?>
    <p>Hi User!</p>
<?php elseif ($use_is_guest): ?>
    <p>hi gest</p>
<?php else: ?>
    <p>please, login</p>
<?php endif ?>

<!-- Any output (including whitespace) between a switch statement and the first case will result in a syntax error -->
<!-- https://www.php.net/manual/en/control-structures.alternative-syntax.php -->
<?php switch ($some_value_or_expression): ?>
<?php case $case1: ?>
    <div class="some-class">case1</div>
<?php break; ?>
<?php case $case2: ?>
    <div class="some-class">case2</div>
<?php break; ?>
<?php default: ?>
    <div class="default">default</div>
<?php break; ?>
<?php endswitch; ?>


<?php while ($condition): ?>
    <!-- something -->
    <p>Do something</p>
<?php endwhile; ?>


<?php for ($i = 0; $i < 5; $i++): ?>
    <li><?= "$i" ?></li>
<?php endfor; ?>


<?php foreach ($some_arr as $item): ?>
    <li><?= "$item" ?></li>
<?php endforeach; ?>

<?php foreach ($some_arr as $k => $val): ?>
    <li><?= "$k" ?>:<?= "$val" ?></li>
<?php endforeach; ?>