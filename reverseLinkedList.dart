import 'linkedList.dart';

void main() {
  linkedList myList = linkedList<String>();
  myList.push('A');
  myList.push('f');
  myList.push('n');
  myList.push('a');
  myList.push('n');

  print('The list  :$myList');
  myList.reverselinked();
  print('The reverse  :$myList');

}
// reverselinked function implements in "linkedList.dart" file

