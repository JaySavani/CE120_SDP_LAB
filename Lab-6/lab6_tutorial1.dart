import 'package:lab6_tutorial1/lab6_tutorial1.dart' as lab6_tutorial1;



//Adding the necessary imports
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

//------------------------- Jay Savani -------------------------//

// // //Creating a data class
// // class Todo {
// // Todo({
// // required this.userId,
// // required this.id,
// // required this.title,
// // required this.completed,
// // });
// // factory Todo.fromJson(Map<String, Object?> jsonMap) {
// // return Todo(
// // userId: jsonMap['userId'] as int,
// // id: jsonMap['id'] as int,
// // title: jsonMap['title'] as String,
// // completed: jsonMap['completed'] as bool,
// // );
// // }
// // final int userId;
// // final int id;
// // final String title;
// // final bool completed;
// // @override
// // String toString() {
// // return 'userId: $userId\n'
// // 'id: $id\n'
// // 'title: $title\n'
// // 'completed: $completed';

// // }
// // }


// // // // void main(List<String> arguments) {
// // // //   print('Hello world: ${practice_1.calculate()}!');

// // // //   //Asynchronous Programming
// // // //   //Concurrency in dart
// // // //   //A thread is a sequence of commands that a computer executes. Some programming languages support
// // // //   //multithreading, which is running multiple threads at the same time, while others do not. Dart, in particular, is a
// // // //   //single-threaded language.

// // // //   //parallelism vs concurrency
// // // //   //Parallelism is when multiple tasks run at the same time on multiple processors or CPU cores. Concurrency

// // // //   //Dart Isolates
// // // //   //Dart’s single thread runs in what it calls an isolate.

// // // //   //Synchronous vs. asynchronous code
// // // //   //Example Of Synchronous Code
// // // //   print("first");
// // // //   print("Second");
// // // //   print("Third");

// // // //   //The Event Loop
// // // //   //Dart uses what it calls an event loop to execute tasks that had previously been postponed.


// // // //   //Futures
// // // //   //The Future Type
// // // //  // Future<int> countTheAtoms();

// // // //  //States For A Future
// // // //  //Example Of a Future
// // // // //  final myFuture = Future<int>.delayed(
// // // // //   Duration(seconds: 1),
// // // // //   ()=>42,
// // // // //  );
// // // // //  print(myFuture);
// // // // //  //ANSWER : Instance of 'Future<int>'


// // // // //  //Getting The Result With CallBacks
// // // // //  print('Before the future');
// // // // //   final myFuture1 = Future<int>.delayed(
// // // // //     Duration(seconds: 1),
// // // // //     () => 42, 
// // // // //   )
// // // // //     .then(
// // // // //       (value) => print('Value: $value'),
// // // // //     )
// // // // //     .catchError(
// // // // //       (error) => print('Error: $error'),
// // // // //     )
// // // // //     .whenComplete(
// // // // //       () => print('Future is complete'),
// // // // //     );
// // // // //   print('After the future');
// // // // //   //Answer :
// // // //   //Before the future
// // // //   //After the future
// // // //   //After 5 Second Delay
// // // //   //Value: 42
// // // //   //Future is complete

 

// // // // }

// // //  //Getting the result with async-await
// // // Future<void> main() async {
// // //   // print('Before the future'); 
// // //   // final value = await Future<int>.delayed(
// // //   //   Duration(seconds: 1),
// // //   //   () => 42,
// // //   // );
// // //   // print('Value: $value');
// // //   // print('After the future');
// // //   //output
// // //   //Before the future
// // //   //Value: 42
// // //   //After the future
  

// // //   //Handeling errors with try catch blocks
// // // //   //try {
// // // // } catch (error) {
// // // // } finally {
// // // // }


// // //   //Try-catch blocks with async-await
// // //   print('Before the future');
// // // try {
// // //   final value = await Future<int>.delayed(
// // //     Duration(seconds: 1),
// // //     () => 42,
// // //   );
// // //   //Catchi]ing An error
// // //   throw Exception('There was an error');

// // //   print('Value: $value');
// // // } catch (error) {
// // //   print(error);
// // // } finally {
// // //   print('Future is complete');
// // //   print('After the future');
// // // }
// // //   //Output:
// // //   //Before the future
// // //   //Value: 42
// // //   //Future is complete
// // //   //After the future
  
// // //   //AFTER THROW STATEMENT
// // //   //OUTPUT
// // //   //Before the future
// // //   //Exception: There was an error
// // //   //Future is complete
// // //   //After the future
  
// // // }

// // Future<void> main() async {
// // final url = 'https://jsonplaceholder.typicode.com/todos/1';
// // final parsedUrl = Uri.parse(url);
// // final response = await http.get(parsedUrl);
// // final statusCode = response.statusCode;
// // if (statusCode == 200) {
// // final rawJsonString = 'abc';
// // //final rawJsonString = response.body;
// // final jsonMap = jsonDecode(rawJsonString);
// // final todo = Todo.fromJson(jsonMap);
// // print(todo);
// // } else {
// // throw HttpException('$statusCode');
// // }

// // // //OUTPUT:
// // // userId: 1
// // // id: 1
// // // title: delectus aut autem
// // // completed: false

// // //Handling errors
// // try {
// //   final url = 'https://jsonplaceholder.typicode.com/todos/1';}
// // on SocketException catch (error) {
// // print(error);
// // } on HttpException catch (error) {
// // print(error);
// // } on FormatException catch (error) {
// // print(error);
// // }

// // //Testing a JSON format exception
// // }





// //Streams
// Future<void> main() async {
// // final file = File('assets/text.txt');
// // final contents = await file.readAsString();
// // print(contents);

// //Reading From A stream
// // final file = File('assets/text_long.txt');
// // final stream = file.openRead();
// // stream.listen(
// // (data) {
// // print(data.length);
// // },
// // );

// //Using an asynchronous for loop
// // Future<void> main() async {
// // final file = File('assets/text_long.txt');
// // final stream = file.openRead();
// // await for (var data in stream) {
// // print(data.length);
// // }
// // }


// //EROOR HANDELING
// // //USING A CALL BACK
// // final file = File('assets/text_long.txt');
// // final stream = file.openRead();
// // stream.listen(
// // (data) {
// // print(data.length);
// // },
// // onError:(error) {
// // print(error);
// // },
// // onDone:() {
// // print('All finished');
// // },
// // );

// // //USING TRY CATCH

// // try {
// // final file = File('assets/text_long.txt');
// // final stream = file.openRead();
// // await for (var data in stream) {
// // print(data.length);
// // }
// // } on Exception catch (error) {
// // print(error);
// // } finally {
// // print('All finished');
// // }





// }
//Cancelling A Stream

// import 'dart:async';
// Future<void> main() async {
// // final file = File('assets/text_long.txt');
// // final stream = file.openRead();
// // StreamSubscription<List<int>>? subscription;
// // subscription = stream.listen(
// // (data) {
// // print(data.length);
// // subscription?.cancel();
// // },
// // cancelOnError: true,
// // onDone: () {
// // print('All finished');
// // },
// // );


// //Transforming A stream

// //Viewing The Bytes
// final file = File('assets/text.txt');
// final stream = file.openRead();
// stream.listen(
// (data) {
// print(data);
// },
// );
// }

//DECODING THE BYTES
// import 'dart:convert';
// import 'dart:io';
// Future<void> main() async {
// final file = File('assets/text.txt');
// final stream = file.openRead();
// await for (var data in stream.transform(utf8.decoder)) {
// print(data);
// }
// }

// // //MINI EXERCISE 1 AND 2
// // Future<void> main() async {
// //   await miniExercisesFutures();
// //   await miniExercisesStreams();
// // }
// // //1
// // //2
// // //3
// // Future<void> miniExercisesFutures() async {
// //   print('Starting miniExercisesFutures()...');
// //   try {
// //     final message = await Future<String>.delayed(
// //       Duration(seconds: 2),
// //       () => 'I am from the future.',
// //     );
// //     print(message);
// //   } catch (exception) {
// //     print(exception);
// //   }
// // }


// // Future<void> miniExercisesStreams() async {
// //   final myStream = Stream<int>.periodic(
// //     Duration(seconds: 1),
// //     (value) => value,
// //   ).take(10);
// //   await for (var number in myStream) {
// //     print(number);
// //   }
// // }

//ISOLATES

// Future<void> main() async {
// print("OK, I'm counting...");
// print(playHideAndSeekTheLongVersion());
// }

// // //App stopping synchronous code
// String playHideAndSeekTheLongVersion() {
// var counting = 0;
// for (var i = 1; i <= 10000000000; i++) {
// counting = i;
// }
// return '$counting! Ready or not, here I come!'
// ;
// }


//Using A Send Port To Return Results
import 'dart:isolate';
// void playHideAndSeekTheLongVersion(SendPort sendPort) {
// var counting = 0;
// for (var i = 1; i <= 1000000000; i++) {
// counting = i;
// }
// sendPort.send('$counting! Ready or not, here I come!');
// }

//Spawning the isolate and listening for messages

// Future<void> main() async {
// // 1
// final receivePort = ReceivePort();
// // 2
// final isolate = await Isolate.spawn(playHideAndSeekTheLongVersion,
// // 3
// receivePort.sendPort,
// );
// // 4
// receivePort.listen((message) {
// print(message);
// // 5
// receivePort.close();
// isolate.kill();
// });
// }


//CHALLENGES
// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:isolate';

Future<void> main() async {
  /// Because of the asynchronous nature of these challenges. The printed
  /// results will be easier to follow if you only uncomment the method you
  /// want to examine.
  //challenge1();
  await challenge2();
  // await challenge3();
  // await challenge4();
}

/// Challenge 1:

void challenge1() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

/// Try to answer before checking. If you were right, give yourself a well
/// deserved pat on the back!
///
///
/// Answer:
///
/// 1 synchronous
/// 11 synchronous
/// 4 microtask queue
/// 5 microtask queue
/// 2 event queue
/// 3 synchronous
/// 7 event queue
/// 9 event queue
/// 10 microtask queue
/// 8 event queue
/// 6 event queue
///
/// Synchronous tasks always run first so that explains 1 and 11. Here is
/// what the event queue and the microtask queue look like after 11 is finished:
///
/// Event queue: 2, 7, 9
/// Microtask queue: 4, 5
/// (Numbers on the left indicate first in line.)
///
/// The microtask queue is always emptied before anything in the event queue
/// gets a chance, so that explains 4 and 5.
///
/// After that 2 gets its turn as first in the event queue. Anything in the
/// `then` callback gets run synchronously immediately after the event queue
/// item so that examplains 3.
///
/// 7 is next in the event queue but when it finishes the `then` callback adds
/// 8 to the end of the event queue. Here is what the queues look like now:
///
/// Event queue: 9, 8
/// Microtask queue:
///
/// Next in line is 9 and when it finishes it adds 10 to the microtask queue:
///
/// Event queue: 8
/// Microtask queue: 10
///
/// Since microtasks take priority it cuts the line in front of 8. After that
/// 8 can go.
///
/// At the end of the one second delay, 6 gets put in the event queue, and since
/// there is no one else in any line, 6 gets run.
///
/// There is no more synchronous code, all the queues are empty, and all the
/// futures have completed, so the program terminates.



/// Challenge 2: Care to make a comment?
Future<void> challenge2() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Comment>[];
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}

/// Challenge 3: Data stream

Future<void> challenge3() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    client.close;
  }
}
/// Challenge 4: Fibonacci from afar
Future<void> challenge4() async {
  final receivePort = ReceivePort();
  final n = 10;
  final arguments = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };

  final isolate = await Isolate.spawn(
    fibonacci,
    arguments,
  );

  receivePort.listen((message) {
    print('Fibonacci number $n is $message.');
    receivePort.close();
    isolate.kill();
  });
}

void fibonacci(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final n = arguments['n'] as int;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}
