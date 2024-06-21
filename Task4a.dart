abstract class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String name) => _name = name;

  bool isOutstanding();
}

class Student extends Person {
  double _cgpa;

  Student(String name, this._cgpa) : super(name);

  double get cgpa => _cgpa;
  set cgpa(double cgpa) => _cgpa = cgpa;

  @override
  bool isOutstanding() {
    return _cgpa > 3.5;
  }
}

class Professor extends Person {
  int _numberOfPublications;

  Professor(String name, this._numberOfPublications) : super(name);

  int get numberOfPublications => _numberOfPublications;
  set numberOfPublications(int numberOfPublications) => _numberOfPublications = numberOfPublications;

  @override
  bool isOutstanding() {
    return _numberOfPublications > 50;
  }
}

void main() {
  // Creating an array of Person
  List<Person> persons = [
    Student('Fakhar', 3.8),
    Professor('Dr. Asif', 30),
  ];

  // Checking isOutstanding() for each person
  for (var person in persons) {
    print('${person.name} is outstanding? ${person.isOutstanding()}');
  }

  // Setting publication count to 100 and checking again
  Professor professor = Professor('Dr. Akram', 100);
  print('${professor.name} is outstanding? ${professor.isOutstanding()}');
}
