import 'stack.dart';

void main() {
 String myString = '((hi)a)';
 print( isBalancedParentheses (myString) );
}
 bool isBalancedParentheses (String s){

  var myStack = Stack<String>();
  bool status=false;
  String left ='(';
  String right =')';

  for (int i=0; i< s.length;i++){
   status= false;
   var myChar =s[i];
   if (myChar==left ){
    myStack.push(s[i]);
   }else if(myChar==right){
    if (myStack.isEmpty){
     status=false;
    }else{
     myStack.pop();
     if(myStack.isEmpty) {
      status = true;
     }
    }
   }

  }
  return status ;
 }