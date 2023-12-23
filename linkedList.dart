import 'node.dart';
class linkedList <L> {
  Node<L>? head ;
  Node<L>? tail;

  bool get isEmpty => head == null;

@override
  String toString() {
    var result = '';
    var temp = head;
    while (temp != null) {
      result += '${temp.value.toString()} -> ';
      temp = temp.nextNode;
    }
    result += 'null';
    return result;
  }

void push(L value){
  head= Node(value: value , nextNode: head);
  tail ??= head;
}

void reverselinked() {
    tail = head;
    var preNode = head;
    var currentNode = head?.nextNode;
    preNode?.nextNode = null;

    while (currentNode != null) {
      final nextNode = currentNode.nextNode;
      currentNode.nextNode = preNode;
      preNode = currentNode;
      currentNode = nextNode;
      
    }
 head = preNode;
  }

  void removeAllOccurrences(L data) {
    while (head != null && head!.value == data) {
      head = head!.nextNode;
    }

    var preNode = head;
    var currentNode = head?.nextNode;
    while (currentNode != null) {
      if (currentNode.value == data) {
        preNode!.nextNode = currentNode.nextNode;
        currentNode = preNode.nextNode;
        continue;
      }
      preNode = currentNode;
      currentNode = currentNode.nextNode;
    }

    tail = preNode;
  }

}


