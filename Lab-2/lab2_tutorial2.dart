import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import 'dart:math';

//------------------------- Jay Savani -------------------------//

void main(List<String> arguments) {
  /* COMMENTING CODE
    
    // This is a single line comment. It is not executed.
    
    /* This is also a comment. Over many...
        many...
        many lines. 
    */

    /// i am a documentation comment
    /// at your service.
    /**
     * Me, too!
    */

  */

  /* PRINTING OUTPUT

    print("Hello, Dart Apprentice reader!");
      
  */

  /* STATEMENT AND EXPRESSIONS

    // 1) Statements

      print("Hello, Dart Apprentice reader!");

      // One example of a complex statement
      if (someCondition) {
        // code block
      }

    // 2) Expressions

      42;
      3 + 2;
      'Hello, Dart Apprentice reader!';
      x;

  */

  /* Arithmetic operations

    // Simple operations
      print(2 + 6);
      print(10 - 2);
      print(2 * 4);
      print(24 / 3);
      print(22 ~/ 3);
      print(24 % 3);


    // Decimal numbers
      22 / 7    // 3.142857142857143 => Dart gives you the standard decimal answer.
      22 ~/ 7   // 3 => If you actually did want to perform integer division, then you could use the ~/ operator:

    // The Euclidean modulo operation
    ((8000 / (5 * 10)) - 32) ~/ (29 % 5)
    //use of parentheses, which in Dart serve two
    //purposes: to make it clear to anyone reading the code —
    //including yourself — what you meant, and to disambiguate
    //the intended order of operations.
    350 / 5 + 2   // 72
    350 / (5 + 2)   // 50

  */

  /* Math functions

    import 'dart:math';   //one of Dart’s core libraries.(tells the compiler that you want to use something from that library.)
    
    print(sin(45 * pi / 180));    // 0.7071067811865475
    print(cos(135 * pi / 180));    // -0.7071067811865475

    print(sqrt(2));   // 1.4142135623730951

    print(max(5, 10));    // 10
    print(min(-5, -10));  // -10

    print(max(sqrt(2), pi / 2));    // 1.5707963267948966

  */

  /* Naming data

    • Identifiers can include both, characters and digits. However,
    the identifier cannot begin with a digit.
    • Identifiers cannot include special symbols except for
    underscore (_) or a dollar sign ($).
    • Identifiers cannot be keywords.
    • They must be unique.
    • Identifiers are case-sensitive.
    • Identifiers cannot contain spaces.

  */

  /* Variables

    int number = 10;
    //If you want to change the value of a variable, then you can just give it a different value of the same type:
    number = 15;

    double apple = 3.14159;   // The way you store decimal numbers is like

  */

  /*
    objects in Dart. In fact, Dart doesn’t have the
    primitive variable types that exist in some languages.
    Everything is an object. Although int and double
    look like primitives, they’re subclasses of num, which
    is a subclass of Object.

    print(10.isEven);   // true
    print(3.14159.round());   // 3

  */

  /* Type safety

    // Dart is a type-safe language.
    // That means once you tell Dart what a variable’s type is, you can’t change it later.
    int myInteger = 10;
    myInteger = 3.14159; // No, no, no. That's not allowed.

    // The num type can be either an int or a double
    num myNumber;
    myNumber = 10;    // OK
    myNumber = 3.14159;   // OK
    myNumber = "t";   // NO

    // use the dynamic type. 
    // This lets you assign any data type you like to your
    // variable, and the compiler won’t warn you about 
    // anything.
    dynamic myVariable;
    myVariable = 10;    // OK
    myVariable = 3.14159;   // OK
    myVariable = "ten";   // OK

    // Dart infers the type and makes someNumber an int.
    var someNumber = 10; 
    someNumber = 15; // OK
    someNumber = 3.14159; // No

    // To create a constant in Dart, use the const keyword
    // Once you’ve declared a constant, you can’t change its data. 

    const myConstant = 10; 
    myConstant = 0; // Not allowed

    // If you can’t create a const variable because you don’t know 
    // its value at compile time, then you must use the final
    // keyword to make it a runtime constant.
    final hoursSinceMidnight = DateTime.now().hour;
    hoursSinceMidnight = 0;   // Error => The final variable 'hoursSinceMidnight' can only be set once

  */

  /* MINI-EXERCISES

    1) Declare a constant of type int called myAge and set it to 
      your age. 
    => const myAge = 19;

    2. Declare a variable of type double called averageAge.
      Initially, set the variable to your own age. Then, set it to 
      the average of your age and your best friend’s age.
    => double averageAge = 19;
    averageAge = 20;

    3. Create a constant called testNumber and initialize it
      with whatever integer you’d like. Next, create another 
      constant called evenOdd and set it equal to testNumber
      modulo 2. Now change testNumber to various numbers. 
      What do you notice about evenOdd
      => const testNumber = 1025;
         const evenOdd = testNumber % 2;

  */

  /* Increment and decrement

    var counter = 0;
    counter += 1;   // counter = 1;
    counter -= 1;   // counter = 0;

    var counter = 0; 
    counter = counter + 1; 
    counter = counter - 1

    var counter = 0; 
    counter++; // 1
    counter--; // 0

    double myValue = 10;
    myValue *= 3; // same as myValue = myValue * 3;
    // myValue = 30.0;
    myValue /= 2; // same as myValue = myValue / 2;
    // myValue = 15.0;

  */

  /* Challenges

    Challenge 1: Variables

      const myAge = 19;
      int dogs = 0;
      dogs++;
      print(dogs);

    Challenge 2: Make it compile
    // Modify the first line so that the code compiles. Did you use var, int, finalor const?

      age = 16;   // solution => int age = 16;
      print(age);
      age = 30; 
      print(age);

    Challenge 3: Compute the answer

      const x = 46;
      const y = 10;
      const answer1 = (x * 100) + y;
      const answer2 = (x * 100) + (y * 100);
      const answer3 = (x * 100) + (y / 10);
      print(answer1); // 4610
      print(answer2); // 5600
      print(answer3); // 4601.0

    Challenge 4: Average rating

      const rating1 = 3.4;
      const rating2 = 4.2;
      const rating3 = 4.5;
      const averageRating = (rating1 + rating2 + rating3) / 3;
      print(averageRating); // 4.033333333333333

    Challenge 5: Quadratic equations
  */

  const a = 4;
  const b = 6;
  const c = 2;
  num delta = ((-b + sqrt((b * b) - (4 * a * c))) / (2 * a));
// const temp = sqrt();
  const root1 = delta;
  print(root1);
}
