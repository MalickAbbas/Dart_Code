class Student {
  String _name;
  List<int> _resultArray = List<int>.filled(5, 0);

  // Default constructor
  Student() : _name = '', _resultArray = List<int>.filled(5, 0);

  // One-argument constructor (for Name)
  Student.withName(this._name);

  // Two-argument constructor
  Student.withNameAndResults(this._name, this._resultArray);

  // Getter and Setter for name
  String get name => _name;
  set name(String name) => _name = name;

  // Getter and Setter for result array
  List<int> get resultArray => _resultArray;
  set resultArray(List<int> resultArray) {
    if (resultArray.length == 5) {
      _resultArray = resultArray;
    } else {
      throw ArgumentError('Result array must contain exactly 5 elements.');
    }
  }

  // Method to calculate average marks
  double average() {
    int total = _resultArray.reduce((a, b) => a + b);
    return total / _resultArray.length;
  }

  // Method to compare average of two students
  int compareAverage(Student other) {
    double thisAverage = this.average();
    double otherAverage = other.average();

    if (thisAverage > otherAverage) {
      return 1;
    } else if (thisAverage < otherAverage) {
      return -1;
    } else {
      return 0;
    }
  }
}

void main() {
  // Creating student instances
  Student student1 = Student.withNameAndResults('Babar', [85, 90, 78, 92, 88]);
  Student student2 = Student.withNameAndResults('Ayesha', [80, 85, 88, 90, 86]);

  // Displaying student averages
  print('${student1.name} Average: ${student1.average()}');
  print('${student2.name} Average: ${student2.average()}');

  // Comparing averages
  int comparison = student1.compareAverage(student2);
  if (comparison == 1) {
    print('${student1.name} has a higher average than ${student2.name}');
  } else if (comparison == -1) {
    print('${student2.name} has a higher average than ${student1.name}');
  } else {
    print('${student1.name} and ${student2.name} have the same average');
  }
}
