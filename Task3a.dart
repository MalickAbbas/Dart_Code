abstract class Movie {
  int _idNumber;
  String _title;
  int _daysRented;

  Movie(this._idNumber, this._title, this._daysRented);

  // Accessor and Mutator methods
  int get idNumber => _idNumber;
  set idNumber(int idNumber) => _idNumber = idNumber;

  String get title => _title;
  set title(String title) => _title = title;

  int get daysRented => _daysRented;
  set daysRented(int daysRented) => _daysRented = daysRented;

  // equals method
  bool equals(Movie other) {
    return _idNumber == other._idNumber && _title == other._title && _daysRented == other._daysRented;
  }

  // Abstract method
  double calcLateFees(int daysLate);
}

class Action extends Movie {
  Action(int idNumber, String title, int daysRented) : super(idNumber, title, daysRented);

  @override
  double calcLateFees(int daysLate) {
    return daysLate * 3.0;
  }
}

class Comedy extends Movie {
  Comedy(int idNumber, String title, int daysRented) : super(idNumber, title, daysRented);

  @override
  double calcLateFees(int daysLate) {
    return daysLate * 2.5;
  }
}

class Drama extends Movie {
  Drama(int idNumber, String title, int daysRented) : super(idNumber, title, daysRented);

  @override
  double calcLateFees(int daysLate) {
    return daysLate * 2.0;
  }
}

void main() {
  Movie actionMovie = Action(1, 'Action Movie', 5);
  Movie comedyMovie = Comedy(2, 'Comedy Movie', 5);

  // Calling calcLateFees polymorphically
  print('Late fee for Action Movie: \$${actionMovie.calcLateFees(3)}');
  print('Late fee for Comedy Movie: \$${comedyMovie.calcLateFees(3)}');

  // Downcasting to reset id for Action Movie
  if (actionMovie is Action) {
    (actionMovie as Action).idNumber = 100;
    print('Updated Action Movie ID: ${actionMovie.idNumber}');
  }

  // Checking equality
  Movie anotherActionMovie = Action(1, 'Action Movie', 5);
  print('Are the action movies equal? ${actionMovie.equals(anotherActionMovie)}');

  // Type compatibility check
  print('Are action and comedy movies equal? ${actionMovie.equals(comedyMovie)}');
}
