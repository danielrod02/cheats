<?php
declare(strict_types=1);

// In php you can use these magic constants:
// __LINE__
// __FILE__ : fully qualified path to php file being parsed
// __DIR__:
// __FUNCTION__
// __CLASS__
// __TRAIT__: new in php 8
// __METHOD__
// __NAMESPACE__
// Classname::class

// Superglobals (they are available in all scopes throughout a script):
// $GLOBALS
// $_SERVER
// $_GET
// $_POST
// $_FILES
// $_COOKIE
// $_SESSION
// $_REQUEST
// $_ENV (use the getenv() function instead, $_ENV may or not be empty 
//      depending on certain config properties in the php.ini file)


// These are double slash comments. These are oneline comments
/* This is a block of comments
    it can span multiple lines 
*/
# You can use this type of oneline comments too
echo "This is how you print in php\n";
print("Or you can use this form\n");
print "Or this one\n";
/* Remember that if you want to interpolate variables or scape some characters
 like \n you have to use double quotes */

// PHP supports ten primitive types.
// Four scalar types:
// bool
// When converting to bool, the following values are considered false:
//     the boolean false itself
//     the integers 0 and -0 (zero)
//     the floats 0.0 and -0.0 (zero)
//     the empty string, and the string "0"
//     an array with zero elements
//     the special type NULL (including unset variables)
//     SimpleXML objects created from empty tags

// int
// float (floating-point number, aka double)
// string
// Four compound types:
// array
// object
// callable
// iterable
// And finally two special types:
// resource
// NULL