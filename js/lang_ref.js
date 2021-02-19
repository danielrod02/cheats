'use strict';

/* 
This is a block comment
*/

// This is a oneline comment


// you can declare a variable using let, const (or var, but var should be avoided)
let someVar;
let someVar; // ERROR: someVar was already declared (same thing occurs with const)
const someConstVar;

var someVar; /* The main differences between var and const, let are:
    - Variables declared this way dont have block scope (if, switch, while, for...), only global and function scope
    - Erros dont occur if we accidentally declare the variable more than once
    - Declarations with `var` are hoisted (only declarations, not assignment nor initializations)
*/


// All the following lines are draft content, yet to be organized and curated

// if statement
if (/* Some condition */ less > greater && isThis === sameAsThis || !active) {
    /* statements and expressions */
} else if (/* other condition */) {
    /* ... */
} else if (/* other */) {
    /* ... */
} else {
    /* default case */
}

// You can also use the conditional operator
const val = isThisTrue ? returnThisfTrue : returnThisIfFalse();

/* The switch statement uses strict comparison === */
switch(someExpressionOrValue) {
    case case1Value:
        /* do something */
        break;
    case case2Value:
        /* do something */
        break;
    case case3Val: // You can group cases like this
    case case4Val:
        /* do something */
        break;
        /* ... */
    default:
        /* do something */
        break;
}

// There are 4 logical operators
op1 || op2;
op1 && op2;
!val;
op1 ?? op2; // We’ll say that an expression is “defined” when it’s neither null nor undefined.
            // Then, a ?? b is: if a is defined, then a, if a isn’t defined, then b

while (condition) {
    /* do something */
}

do {
    /* do something */
} while(condition);

for (/* init vars */ let i = 0; /* condition */ i <= 10; /* executes after the body on each iteration */ i++) {
    /* do something with i (or without i) */
    /* THE CONDITION IS TESTED BEFORE EVERY ITERATION (EVEN BEFORE TH FIRST) */
}

/* loop over every enumerable property of obj */
for (let key in obj) {
    /* do something */
}
// to loop over keys and values at the sam time
for (let [key value] in Object.entries(obj)) {
    /* do something */
}

// to loop over an iterable (an object that implements the iteration protocol through the [Symbol.iterator] method)
for (let val of someIterable) {
    /* do something */
    // you can break the loop using break
    break;
    // you can skip the rest of an iteration and pass to the next one using continue;
    continue;
}

/* There are three ways to create a function:
    - function declaration
    - function expression (including named function expressions)
    - arrow functions (which in fact can be categorized as function expressions, 
        but they stand on themselves because of their particularities)
*/

// function declaration
function functionName(
    arg1,
    arg2 = "defaultValue",
    { 
        thisPropGoes: here = "defaultVal",
        thisArrayProp: [ goesHere, andHere, ...theRestArrayElementsHere ],
        /* ... */ 
    } = {} /* if the user doesnt provide this arg use all the defaults */,
    ...theRestOfTheArgsHere
    ) {

    /* 
        do something here with arg1, arg2, here, goesHere, andHere, theRestArrayElementsHere, theRestOfTheArgsHere.
        All the arguments passed to the function are also avaliable vie the `arguments` array.

        REMEMBER: FUNCTION DECLARATIONS ARE HOISTED. IT DOESNT MATTER IF YOU DECLARE THE FUNCTION AT THE END
        OF THE SCRIPT, IT'LL BE AVALIABLE THROUGHOUT THE SCRIPT
    */
}

// function expression
const foo = function (...args) {
    /*
        Do something.
        The main difference with respect to function declarations is that function expressions are not hoisted,
        they are only avalable and callable after the expression is evaluated
    */
};
const foo = function Name(...args) {
    /*
        Useful for recursion, since we can call the function inside itself
    */
}

// Arrow functions
const arrowFoo = (arg1, arg2, ...rest) => {
    /* 
    They're practically the same as normal function expressions, except that:
        - Do not have `this``
        - Do not have `arguments`
        - Can’t be called with `new`
        - They also don’t have `super`
     */
     return val;
};
const arrowFooSimplerSyntaxWithOneArg = arg => {
    /* do something */
    return something;
};
const arrowFooWithReturnedValueOrExpression = arg => returnedValue;
const arrowNoArgs = () => val;


// generators
function* range(to, fromNum = 0, step = 1) {
    for (let i = fromNum; i < to; i += step) {
        if (i === (to - step)) {
            return i; // The returned value from the generator will be `{ value: i, done: true }`
                      // after that it will return `{ value: undefined, done: true }`
                      // the consequence of that is: for..of iteration ignores the last value, when done: true
        } else {
            yield i;
        }
    }
}
// CAN ALSO BE DECLARED AS `function *range()`
/*
    ---------------------------------- WIP ------------------------------------------
    GENERATORS section not finished
    https://javascript.info/generators
*/

// Objects
// REMEMBER: OBJECT PROPERTY KEYS CAN ONLY BE STRINGS AND SYMBOLS
//      WHEN ATTEMPTING TO CREATE A PROPERTY WITH DIFFERENT TYPE KEY, THE 
//      KEY IN QUESTION WILL BE TRANSFORMED TO STRING FIRST
let computedPropertyName = 'otherKey';
let someSymb = Symbol.for("symb_description");
let otherSymb = Symbol.for("other_symb_description");
let obj = {
    key: value,
    [computedPropertyName]: 'other val',
    ["any kind" + "of expression can be here"]: 'vallll',
    [Symbol.for("symb_description")]() {
        /* This is a method */
    },
    method: () => {
        /* do something */
    },
    [otherSymb]: 'symbol prop value',
};

let comeVar = 5;
let obj = {
    comeVar,
}; // This is equivalent to `obj = { comeVar: comeVar }`

// To test if a property exist within an object use the `in` operator:
"somKey" in obj;
someSymb in obj;

// To delete the property from an object
delete obj.someProp;

/*
______       _ _ _          _         _____                     
| ___ \     (_) | |        (_)       |_   _|                    
| |_/ /_   _ _| | |_ ______ _ _ __     | |_   _ _ __   ___  ___ 
| ___ \ | | | | | __|______| | '_ \    | | | | | '_ \ / _ \/ __|
| |_/ / |_| | | | |_       | | | | |   | | |_| | |_) |  __/\__ \
\____/ \__,_|_|_|\__|      |_|_| |_|   \_/\__, | .__/ \___||___/
                                           __/ | |              
                                          |___/|_|              
*/

/*
There are 7 primitive types: 
    string
    number (+-Infinity and NaN are of type Number)
    bigint (`10n` or `BigInt(10)`)
    boolean
    symbol
    null
    undefined
*/

// Given this numbers
const num1 = 16e4;
const num2 = 1_000.30303;
const num3 = 234.33;
const bin = 0b01001;
const oct = 0o23177;
const hex = 0x1787a8d6a9;

// Number.prototype.toString(base)
num1.toString(8); // Return the string representation of the number in octal format
num2.toFixed(2);
num2.toPrecision();

// The `Math` object
Math.floor();
Math.ceil();
Math.round();
Math.trunc();
Math.max();
Math.min();
// The math object also contains trigonometric, hyperbolic, logarithmic functions
// allows you to calculate powers, sqrt
// and the following constants, absolute values
Math.E;
Math.LN10;
Math.LN2;
Math.LOG10E;
Math.LOG2E;
Math.PI;
Math.SQRT1_2;
Math.SQRT2;

// You can create very plain objects (with no __proto__)


/*
  ____                                             _____ _____     
 |  _ \                                      /\   |  __ \_   _|    
 | |_) |_ __ _____      _____  ___ _ __     /  \  | |__) || |  ___ 
 |  _ <| '__/ _ \ \ /\ / / __|/ _ \ '__|   / /\ \ |  ___/ | | / __|
 | |_) | | | (_) \ V  V /\__ \  __/ |     / ____ \| |    _| |_\__ \
 |____/|_|  \___/ \_/\_/ |___/\___|_|    /_/    \_\_|   |_____|___/
*/


/*
    The man three objects are: `window` (global object), `navigator` and `document`.
    `window`: Represents this tab
    `navigator`: Represents the state and the identity of the user agent
    `document`: Represents the document (DOM and CSSOM)

    Also, the `screen`, `location` and `history` objects can be very useful
*/

