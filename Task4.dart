import 'dart:math';

class Box<T> {
  List<T> _items = [];

  // Method to add an item to the box
  void add(T item) {
    _items.add(item);
  }

  // Method to check if the box is empty
  bool isEmpty() {
    return _items.isEmpty;
  }

  // Method to draw an item from the box
  T? drawItem() {
    if (isEmpty()) {
      return null;
    }
    Random random = Random();
    int index = random.nextInt(_items.length);
    return _items.removeAt(index);
  }
}

void main() {
  // Create a box for Strings
  Box<String> nameBox = Box<String>();
  nameBox.add('azam');
  nameBox.add('hussain');
  nameBox.add('ali');
  nameBox.add('furqan');

  print('Drawing names from the name box');
  while (!nameBox.isEmpty()) {
    print('Drew: ${nameBox.drawItem()}');
  }
  print('Attempt to draw from an empty name box');

  // Create a box for Integers
  Box<int> numberBox = Box<int>();
  numberBox.add(8);
  numberBox.add(2);
  numberBox.add(4);
  numberBox.add(6);

  print('Drawing numbers from the number box');
  while (!numberBox.isEmpty()) {
    print('Drew: ${numberBox.drawItem()}');
  }
  print('Attempt to draw from an empty number box');
}
