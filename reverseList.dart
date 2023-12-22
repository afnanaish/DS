import 'dart:io'; // to use   stdout.write()
void main() {

  List <String> myList = ['a','f','n','a','n'];
  print('My original list is: $myList ');

  stdout.write('Reversed list is: [');
  reverse(myList);
  stdout.write(']');

}

void reverse (List <dynamic> myList){
  var myStack = Stack <dynamic>();

  for (dynamic item in myList ){
    myStack.push(item);
  }
  while (!(myStack.isEmpty)){
    stdout.write(myStack.pop()); // to print without a newline
    stdout.write(',');
// or    print(myStack.pop());   // to print with a newline

  }

}

class Stack<E> {
  Stack() : element = <E>[];
  final List<E> element;

  void push(E nelement) => element.add(nelement);

  E pop() => element.removeLast();

  bool get isEmpty => element.isEmpty;

}
