import 'linkedList.dart';

void main() {
  linkedList myList = linkedList<String>();
  myList.push('a');
  myList.push('f');
  myList.push('n');
  myList.push('a');
  myList.push('n');

  print('The list  :$myList');
  myList.removeAllOccurrences('a');
  print('After remove all occurence  :$myList');

}
 // removeAllOccurrences function implements in "linkedList.dart" file