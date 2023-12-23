class Stack<E> {
  Stack() : element = <E>[];
  final List<E> element;

  void push(E nelement) => element.add(nelement);

  E pop() => element.removeLast();

  bool get isEmpty => element.isEmpty;

}