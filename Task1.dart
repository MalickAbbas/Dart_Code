

class Person {
  String _name;
  String _address;
  String _phoneNumber;
  String _emailAddress;

  Person(this._name, this._address, this._phoneNumber, this._emailAddress);

  // Getters and Setters
  String get name => _name;
  set name(String name) => _name = name;

  String get address => _address;
  set address(String address) => _address = address;

  String get phoneNumber => _phoneNumber;
  set phoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;

  String get emailAddress => _emailAddress;
  set emailAddress(String emailAddress) => _emailAddress = emailAddress;
}

class Student extends Person {
  String _status;

  Student(String name, String address, String phoneNumber, String emailAddress, this._status)
      : super(name, address, phoneNumber, emailAddress);

  // Getter and Setter
  String get status => _status;
  set status(String status) => _status = status;
}

class Employee extends Person {
  String _office;
  double _salary;
  Date _dateHired;

  Employee(String name, String address, String phoneNumber, String emailAddress, this._office, this._salary, this._dateHired)
      : super(name, address, phoneNumber, emailAddress);

  // Getters and Setters
  String get office => _office;
  set office(String office) => _office = office;

  double get salary => _salary;
  set salary(double salary) => _salary = salary;

  Date get dateHired => _dateHired;
  set dateHired(Date dateHired) => _dateHired = dateHired;
}
class Date {
  int _year;
  int _month;
  int _day;

  Date(this._year, this._month, this._day);

  @override
  String toString() {
    return '$_year-$_month-$_day';
  }
}
class Faculty extends Employee {
  String _officeHours;
  String _rank;

  Faculty(String name, String address, String phoneNumber, String emailAddress, String office, double salary, Date dateHired, this._officeHours, this._rank)
      : super(name, address, phoneNumber, emailAddress, office, salary, dateHired);

  // Getter and Setter
  String get officeHours => _officeHours;
  set officeHours(String officeHours) => _officeHours = officeHours;

  String get rank => _rank;
  set rank(String rank) => _rank = rank;

  void display() {
    print('Faculty: $name');
    print('Address: $address');
    print('Phone: $phoneNumber');
    print('Email: $emailAddress');
    print('Office: $office');
    print('Salary: \$$_salary');
    print('Date Hired: ${_dateHired.toString()}');
    print('Office Hours: $officeHours');
    print('Rank: $rank');
  }
}

class Staff extends Employee {
  String _title;

  Staff(String name, String address, String phoneNumber, String emailAddress, String office, double salary, Date dateHired, this._title)
      : super(name, address, phoneNumber, emailAddress, office, salary, dateHired);

  // Getter and Setter
  String get title => _title;
  set title(String title) => _title = title;

  void display() {
    print('Staff: $name');
    print('Address: $address');
    print('Phone: $phoneNumber');
    print('Email: $emailAddress');
    print('Office: $office');
    print('Salary: \$$_salary');
    print('Date Hired: ${_dateHired.toString()}');
    print('Title: $title');
  }
}

void main() {
  Date date = Date(2005, 5, 20);
  Faculty faculty = Faculty('WASIM KHAN', 'MANDI CHOWK', '051-489584', 'wasim@gmail.com', 'Room 55', 75000, date, '9-5', 'Assistant-Professor');
  Date dat1 = Date(2016, 6, 19);
  Staff staff = Staff('MUHAMAD KHAN', 'CHORR CHOWK', '071-5896324', 'khan@yahoo.com', 'Room 4', 95000, dat1, 'Manager');

  faculty.display();
  print('*********************************************');
  staff.display();
}
