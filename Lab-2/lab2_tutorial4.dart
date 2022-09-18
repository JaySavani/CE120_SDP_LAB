import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

//------------------------- Jay Savani -------------------------//

void main(List<String> arguments) {
  /* Chapter 4 : Control Flow

    // Boolean values
    const bool yes = true; 
    const bool no = false;
    const yes = true; 
    const no = false;

    //Testing equality
    const doesOneEqualTwo = (1 == 2);
    // const doesOneEqualTwo = 1 == 2; this is also fine
    print(doesOneEqualTwo);   // false
    
    //Testing inequality
    const doesOneNotEqualTwo = (1 != 2);
    //const alsoTrue = !(1 == 2); this is also fine
    print(doesOneNotEqualTwo);    // true

    // Testing greater and less than
    const isOneGreaterThanTwo = (1 > 2); // false
    const isOneLessThanTwo = (1 < 2);   // true

    print(1 <= 2); // true 
    print(2 >= 2); // true

    // AND operator
    const isSunny = true; 
    const isFinished = true;
    const willGoCycling = isSunny && isFinished;    // true

    // OR operator
    const willTravelToAustralia = true; 
    const canFindPhoto = false;
    const canDrawPlatypus = willTravelToAustralia || canFindPhoto;    // true

    // Operator precedence
    const andTrue = 1 < 2 && 4 > 3;
    const andFalse = 1 < 2 && 3 > 4;
    const orTrue = 1 < 2 || 3 > 4;
    const orFalse = 1 == 2 || 3 == 4;

    const confuse = 3 > 4 && 1 < 2 || 1 < 4;
    print(confuse);    // true


    // order that Dart uses to evaluate expressions 
    // containing comparison and logical operators
    /// 1) !
    /// 2) >= > <= <
    /// 3) == != 
    /// 4) && 
    /// 5) || 

    // Overriding precedence with parentheses
    3 > 4 && (1 < 2 || 1 < 4) // false
    (3 > 4 && 1 < 2) || 1 < 4 // true

    // String equality
    const guess = 'dog';
    const dogEqualsCat = guess == 'cat';    // false

  */

  /* Mini-exercises

    1)const myAge = 19;
      const isTeenager = (13 < myAge && myAge < 19);
      print(isTeenager);

    2)const myAge = 19;
      const maryAge = 30;
      const bothTeenagers = (13 < myAge && myAge < 19) && (13 < maryAge && maryAge < 19);
      print(bothTeenagers);

    3)const reader = "Porus";
      const ray = "Ray Wenderlich";
      const rayIsreader = reader == ray;
      print(rayIsreader);   // false
    
  */

  /* The if statement
    if (2 > 1) {
      print('Yes, 2 is greater than 1.');
    }

    // The else clause
    const animal = 'Fox';
    if (animal == 'Cat' || animal == 'Dog') { 
      print('Animal is a house pet.');
    } else {
      print('Animal is not a house pet.');
    }
    // Animal is not a house pet.

    // Else-if chains
    const trafficLight = 'yellow';
    var command = '';
    if (trafficLight == 'red') { 
      command = 'Stop';
    } else if (trafficLight == 'yellow') { 
      command = 'Slow down';
    } else if (trafficLight == 'green') { 
      command = 'Go';
    } else {
      command = 'INVALID COLOR!';
    }
    print(command);   // Slow down

  */

  /* Variable scope
    const global = 'Hello, world';
    void main() {
      const local = 'Hello, main';
      if (2 > 1) {
        const insideIf = 'Hello, anybody?';
        print(global);
        print(local);
        print(insideIf);
      }
      print(global);
      print(local);
      print(insideIf); // Not allowed!    // not defined
    }
    //Hello, world
    //Hello, main
    //Hello, anybody?
    //Hello, world
    //Hello, main

  */

  /* The ternary conditional operator
    // (condition) ? valueIfTrue : valueIfFalse;
    const score = 83;
    const message = (score >= 60) ? 'You passed':'You failed';
  */

  /* Mini-exercises

    1)const myAge = 19;
      if (13 < myAge && myAge < 19) {
        print("Teenager");
      } else {
        print("Not a teenager");
      }

    2)const myAge = 19;
      var answer = (13 < myAge && myAge < 19) ? "Teenager" : "Not a teenager";
      print(answer);
  */

  /* Switch statements

    switch (variable) { 
      case value1:
        // code 
        break;
      case value2:
        // code 
        break;
      ...
      default:
        // code
      }

      // Replacing else-if chains

      const number = 3; 
      if (number == 0) {
      print('zero');
      } else if (number == 1) { 
      print('one');
      } else if (number == 2) { 
      print('two');
      } else if (number == 3) { 
      print('three');
      } else if (number == 4) { 
      print('four');
      } else {
      print('something else');
      }

    const number = 3; 
    switch (number) {
    case 0: 
    print('zero');
    break;
    case 1: 
    print('one');
    break;
    case 2: 
    print('two');
    break;
    case 3: 
    print('three');
    break;
    case 4: 
    print('four');
    break;
    default:
    print('something else');
    }

  const weather = 'cloudy';
  switch (weather) {
  case 'sunny':
  print('Put on sunscreen.');
  break;
  case 'snowy':
  print('Get your skis.');
  break;
  case 'cloudy':
  case 'rainy':
  print('Bring an umbrella.');
  break;
  default:
  print("I'm not familiar with that weather."
  );
  }
  */

  /* Enumerated types

    // Enumerated types, also known as , play especially well 
    // with switch statements. You can use them to define your 
    // own type with a finite number of options.

    // placing it outside of the main function:
    enum Weather { 
      sunny, 
      snowy,
      cloudy,
      rainy,
      }
    // it’s customary to write the enum name with an initial capital letter, as Weather 
    // The values of an enum should use lowerCamelCase unless you have a special reason to do otherwise.
  
    const weatherToday = Weather.cloudy;
    switch (weatherToday) {
    case Weather.sunny:
    print('Put on sunscreen.');
    break;
    case Weather.snowy:
    print('Get your skis.');
    break;
    case Weather.cloudy:
    case Weather.rainy:
    print('Bring an umbrella.');
    break;
    }   // Bring an umbrella.

    // Enum values and indexes
    print(weatherToday);    // Weather.cloudy

    final index = weatherToday.index    // index => 2
  */

  /* Mini-exercises
    1)enum AudioState {
    playing,
    paused,
    stopped,
    }

    2)enum AudioState {   // put this outside of the main function.
        playing,
        paused,
        stopped,
      }
    const Audio = AudioState.stopped;
      switch (Audio) {
        case AudioState.playing:
          print('AudioState is playing.');
          break;
        case AudioState.paused:
          print('AudioState is paused.');
          break;
        case AudioState.stopped:
          print('AudioState is stopped.');
          break;
      } // AudioState is stopped.
  */
}
