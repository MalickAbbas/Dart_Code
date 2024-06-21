class Job {
  String _designation;
  double _salary;
  int _id;

  Job(this._designation, this._salary, this._id);

  // Getters and Setters
  String get designation => _designation;
  set designation(String designation) => _designation = designation;

  double get salary => _salary;
  set salary(double salary) => _salary = salary;

  int get id => _id;
  set id(int id) => _id = id;
}

class Employee {
  String _name;
  String _emailAddress;
  Job _job;

  Employee(this._name, this._emailAddress, this._job);

  // Getters and Setters
  String get name => _name;
  set name(String name) => _name = name;

 

  String get emailAddress => _emailAddress;
  set emailAddress(String emailAddress) => _emailAddress = emailAddress;

  Job get job => _job;
  set job(Job job) => _job = job;

  void display() {
    print('Employee: $_name');
    print('Email: $_emailAddress');
    print('Job Designation: ${_job.designation}');
    print('Job Salary: \ ${_job.salary}');
    print('Job ID: ${_job.id}');
  }

  bool isHighEarner() {
    return _job.salary > 50000;
  }
}

void main() {
  Job job1 = Job('Manager', 60000, 101);
  Employee employee1 = Employee('MUHAMMAD ALI', 'ali@gmail.com',  job1);

   Job job2 = Job('Assistant', 50000, 102);
  Employee employee2 = Employee('AZAM ALI', 'azam@yahoo.com',  job2);

  employee1.display();
  print('*********************************');
  employee2.display();

if(employee1.isHighEarner()){
  print('${employee1.name} is a high earner.');
}
else{
  print('${employee2.name} is a high earner.');
}
  
}
