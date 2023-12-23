import 'node.dart';
void main(){
var node1= Node(value: 'A');
var node2= Node(value: 'f');
var node3= Node(value: 'n');
var node4= Node(value: 'a');
var node5= Node(value: 'n');

node1.nextNode=node2;
node2.nextNode=node3;
node3.nextNode=node4;
node4.nextNode=node5;

print('Reversed Nodes :');
printReverseNodes(node1);

}
void printReverseNodes<N>(Node<N>? node){
if (node == null){
  return;}
printReverseNodes(node.nextNode);
  print(node.value);


}
