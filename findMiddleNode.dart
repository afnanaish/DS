import 'node.dart';
import 'linkedList.dart';

void main() {
  linkedList myList =linkedList<String>();
  myList.push('A');
  myList.push('f');
  myList.push('n');
  myList.push('a');
  myList.push('n');

  print('The Middle Node :');
  final middle =findMiddle(myList);
  print('${middle?.value}');
}

Node<N>? findMiddle<N>(linkedList<N> myList) {
  var pointer1 = myList.head;
  var pointer2 = myList.head;

  while(pointer2?.nextNode != null){
    pointer1 = pointer1?.nextNode;
    pointer2 = pointer2?.nextNode?.nextNode;
      }
  return pointer1;
}
