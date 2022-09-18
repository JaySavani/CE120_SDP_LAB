import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;

//------------------------- Jay Savani -------------------------//

// Mini-Exercises
String youAreWonderful(String name, int numberPeople) {
  return "You are wonderful, $name. $numberPeople people think so.";
}

// Returning Function from Function
Function namedFunction() {
  return () {
    print('hello');
  };
}

Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}

// Arrow Functions
int add(int a, int b) => a + b;

// Refactoring Example-2
Function applyMultiplier1(num multiplier) {
  return (num value) => value * multiplier;
}

int repeatTask(int times, int input, Function task) {
  while (times-- != 0) {
    input = task(input);
  }
  return input;
}

void main(List<String> arguments) {
  /*
    // function

    const input = 12;
    final output = compliment(input);
    print(output);

    String compliment(int number) { // put out side main
      return '$number is a very nice number.'; // 12 is a very nice number.
    }

    // Using multiple parameters

    void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your furry friend,$pet!');
    }

    helloPersonAndPet('Fluffy', 'Chris'); // Hello, Fluffy, and your furry friend, Chris
    helloPersonAndPet();  // Error : 2 positional argument(s) expected, but 0 found

    String fullName(String first, String last, String title) {
      return '$title $first $last';
    }
    To indicate that a parameter is optional, you surround the 
    parameter with square brackets and add a question mark 
    after the type

    String fullName(String first, String last, [String? title]) {
      if (title != null) {
        return '$title $first $last';
      } else {
        return '$first $last';
      }
    }

    print(fullName('Ray', 'Wenderlich'));
    print(fullName('Albert', 'Einstein', 'Professor'));
    // Ray Wenderlich
    // Professor Albert Einstein

    // Providing default values

    bool withinTolerance(int value, [int min = 0, int max = 10]) {
    return min <= value && value <= max;
    }
    withinTolerance(5) // true 
    withinTolerance(15)   // false
    withinTolerance(9, 7, 11) // true
    withinTolerance(9, 7) // true

    // Naming parameter

    // To create a named parameter, you surround it with curly 
    // braces instead of square brackets.

    bool withinTolerance(int value, {int min = 0, int max = 10}) {
      return min <= value && value <= max;
    }

    withinTolerance(9, min: 7, max: 11) // true 
    withinTolerance(9, max: 11, min: 7) // true

    withinTolerance(5) // true
    withinTolerance(15)   // false
    withinTolerance(5, min: 7) // false
    withinTolerance(15, max: 20) // true

    // Making named parameters required

    // Named parameters are 
    // optional by default, but value can’t be optional.

    bool withinTolerance({
    required int value,
    int min = 0,
    int max = 10,
    }) {
      return min <= value && value <= max;
    }
    
/*
  // Anonymous Functions
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Error: Function expressions can't be named.
  // Function myFunction = int multiply(int a, int b){
  //   return a * b;
  // };

  print(multiply(2, 3));      // 6
  
  final triple = applyMultiplier(3);
  print(triple(6));         // 18
  print(triple(14.0));      // 42.0
  */

  /*
  // Anonymous fuction in forEach Loop
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final trippled  = number*3;
    print(trippled);
  });
  // 3 6 9
  */

  /*
  // Closure
  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1()); // 1
  print(counter2()); // 1
  print(counter1()); // 2
  print(counter1()); // 3
  print(counter2()); // 2
  */

  /*
  // Mini-Exercises
  Function wonderful = (String name){
    return "You are wonderful, $name.";
  };

  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) { print(wonderful(person)); });
  // You are wonderful, Chris.
  // You are wonderful, Tiffani.
  // You are wonderful, Pablo.
  */
  
  /*
  // Arrow Functions
  final multiply = (int a, int b) => a * b;
  print(multiply(2, 3)); // 6
  */

  /*
  // Refactoring Example-3
  const numbers = [1, 2, 3];
  numbers.forEach((number) => print(number * 3));
  */

  /*
  // Mini-Exercises
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) => print("You are wonderful, $person."));
  */

  /*
  // Challenges
  // Challenge-1: Prime Time
  Function isPrime = (n) {
    for(int i = 2; i <= sqrt(n); i++){
      if(n%i == 0)
        return false;
    }
    return true;
  };
  print(isPrime(19));   // true
  print(isPrime(20));   // false

  // Challenge-2: Can you repeat that?
  // Function repeatTask implemented above...
  print(repeatTask(4, 2, (n) { return n*n; }));

  // Challenge-3: Dart and Arrows
  print(repeatTask(4, 2, (n) => n*n ));
  */

  */
}
