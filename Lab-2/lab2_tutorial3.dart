import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

//------------------------- Jay Savani -------------------------//

void main(List<String> arguments) {
  /* Data types in Dart
    -> int
    -> double
    -> num
    -> dynamic
    -> String
  */

  /* Checking the type at runtime

    // the is keyword.
    num myNumber = 3.14; 
    print(myNumber is double);    // true
    print(myNumber is int);   //false

    // Another option to see the type at runtime is to use the runtimeType property that is available to all types.
    print(myNumber.runtimeType);    // double
  
  */

  /* Type conversion

    var integer = 100;
    var decimal = 12.5; 
    integer = decimal;    // A value of type 'double' can't be assigned to a variable of type 'int'.

    //You can convert this double to an int like so:
    integer = decimal.toInt();

    const hourlyRate = 19.5; 
    const hoursWorked = 10;
    const totalCost = hourlyRate * hoursWorked;   // double because this is the safest choice

    const totalCost = (hourlyRate * hoursWorked).toInt();   // Const variables must be initialized with a constant value.
    // The problem is that toInt is a runtime method.
    // easy fix Just change const to final:
    final totalCost = (hourlyRate * hoursWorked).toInt();   //Now totalCost is an int.

    // The number 3 is an integer, but literal number values that 
    // contain a decimal point cannot be integers
    const wantADouble = 3.0;    // this is double
  */

  /* Casting down
    num someNumber = 3;
    print(someNumber.isEven);   The getter 'isEven'isn't defined for the type 'num'.
  
    final someInt = someNumber as int;
    print(someInt.isEven);    // false

    int someNumber = 3;
    print(someNumber.isEven);   // false

    num someNumber = 3;
    final someDouble = someNumber as double;    // _CastError (type 'int' is not a subtype of type 'double' in type cast)

    //If you do need to convert an int to a double atruntime, use the toDouble method
    final someDouble = someNumber.toDouble();   // double
  */

  /* Mini-exercises
    1) 
      const age1 = 42;    // int
      const age2 = 21;    // int

    2)
      const averageAge = age1 + age2;   // double
  */

  /* Working with strings in Dart

    // strings are immutable in Dart.
    var greeting = 'Hello, Dart!';
    greeting = 'Hello, Flutter!';
    // It’s not like you replaced Dart in the first 
    // string with Flutter. No, you completely discarded the string 
    // 'Hello, Dart!'and replaced it with a whole new string 
    // whose value was 'Hello, Flutter!'.

    // Dart doesn’t have Character or char.
    const letter = 'a';   // even though letter is only one character long, it’s still of type String.
  
    // Single-quotes vs. double-quotes
  
    // Both of these are fine:
    'I like cats'
    "I like cats"
    'my cat\'s food'    // backslash \ as an escape character so that Dart knows that the string isn’t ending early
  
    //Concatenation
    var message = 'Hello' + ' my name is '; 
    const name = 'Porus';
    message += name;    // 'Hello my name is Porus'

    // for lot of concatenation
    final message = StringBuffer();
    message.write('Hello'); 
    message.write(' my name is '); 
    message.write('Porus');
    message.toString();   // "Hello my name is Porus"

  */

  /* Interpolation

    const name = 'Porus';
    const introduction = 'Hello my name is $name';    // 'Hello my name is Porus'
  
    const oneThird = 1 / 3;
    const sentence = 'One third is $oneThird.';   // One third is 0.3333333333333333.
    final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
    // One third is 0.333.

  */

  /* Multi-line strings

    const bigString = '''   //Three double-quotes (""") would have done the same thing.
    You can have a string
    that contains multiple
    lines
    by
    doing this.''';
    print(bigString);

    const oneLine = 'This is only ' 
      'a single '
      'line '
      'at runtime.';
    // const oneLine = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';
    // both are the same.
    print(oneLine);   //This is only a single line at runtime.
  
    const twoLines = 'This is\ntwo lines.';
    // This  is 
    // two lines.

    // to ignore any special characters that a string might contain
    const rawString = r'My name \n is $name.';    //My name \n is $name.
    
  */

  /* Mini-exercises
    1)
      const firstName = "Porus";
      const lastName = "King";
    2)
      const firstName = "Porus";
      const lastName = "King";
      const fullName = firstName + " " + lastName;
    3)
      const firstName = "Porus";
      const lastName = "King";
      const myDetails = "Hello, my name is $firstName $lastName."; //Hello, my name is Porus King.
  */

  /* Object and dynamic types

    var myVariable = 42;
    myVariable = 'hello';   // compile-time error
    myVariable = 5.4;   // compile-time error

    dynamic myVariable = 42;
    myVariable = 'hello'; // OK

    var myVariable; // defaults to dynamic
    myVariable = 42; // OK
    myVariable = 'hello'; // OK
  
    // If you need to explicitly say that any type is allowed
    Object? myVariable = 42; // OK, ? -> means that the it's include null value
    myVariable = 'hello'; // OK
  */

  /* Challenges

    C-1 : Teacher’s grading
    final grade = ((90 * 0.20) + (80 * 0.30) + (94 * 0.50)).toInt();
    print(grade);   // 89

    C-2
    const name = 'Ray';
    name += ' Wenderlich';    // Constant variables can't be assigned a value. with const we can't change the value

    C-3
    const value = 10 / 2;   // double

    C-6
    const number = 10; 
    const multiplier = 5;
    final summary = '$number * $multiplier = ${number * multiplier}';
    print(summary); // 10 * 5 = 50
    
  */
}
