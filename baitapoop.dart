// Lớp Person là lớp cha cho các lớp Student và Teacher
class Person {
  String id;
  String name;
  int age;
  String gender;

  Person(this.id, this.name, this.age, this.gender);

  void displayInfo() {
    print('ID: $id, Name: $name, Age: $age, Gender: $gender');
  }
}

// Lớp Student kế thừa từ Person
class Student extends Person {
  String grade;
  double score;

  Student(String id, String name, int age, String gender, this.grade, this.score)
      : super(id, name, age, gender);

  // Phương thức hiển thị thông tin sinh viên
  @override
  void displayInfo() {
    super.displayInfo();
    print('Grade: $grade, Score: $score');
  }

  // Phương thức tính điểm trung bình (ở đây chỉ có 1 điểm)
  double calculateAverageScore() {
    return score;
  }
}

// Lớp Teacher kế thừa từ Person
class Teacher extends Person {
  String subject;
  double salary;

  Teacher(String id, String name, int age, String gender, this.subject, this.salary)
      : super(id, name, age, gender);

  // Phương thức hiển thị thông tin giáo viên
  @override
  void displayInfo() {
    super.displayInfo();
    print('Subject: $subject, Salary: $salary');
  }
}

// Lớp Classroom
class Classroom {
  String id;
  String name;
  List<Student> students = [];
  Teacher? teacher;

  Classroom(this.id, this.name);

  // Thêm học sinh vào lớp
  void addStudent(Student student) {
    students.add(student);
  }

  // Gán giáo viên phụ trách lớp
  void assignTeacher(Teacher teacher) {
    this.teacher = teacher;
  }

  // Hiển thị thông tin lớp học
  void displayClassInfo() {
    print('Class ID: $id, Class Name: $name');
    if (teacher != null) {
      print('Teacher: ${teacher?.name}');
    }
    print('Students:');
    for (var student in students) {
      student.displayInfo();
    }
  }
}

// Chức năng chính của hệ thống
void main() {
  // Tạo giáo viên
  Teacher teacher1 = Teacher('T01', 'Mr. John', 35, 'Male', 'Math', 5000);
  Teacher teacher2 = Teacher('T02', 'Ms. Sarah', 30, 'Female', 'English', 4500);

  // Tạo học sinh
  Student student1 = Student('S01', 'Alice', 18, 'Female', '10A', 8.5);
  Student student2 = Student('S02', 'Bob', 17, 'Male', '10B', 7.5);
  Student student3 = Student('S03', 'Charlie', 18, 'Male', '10A', 9.0);

  // Tạo lớp học
  Classroom classA = Classroom('C01', 'Class 10A');
  Classroom classB = Classroom('C02', 'Class 10B');

  // Gán giáo viên cho lớp
  classA.assignTeacher(teacher1);
  classB.assignTeacher(teacher2);

  // Thêm học sinh vào lớp
  classA.addStudent(student1);
  classA.addStudent(student3);
  classB.addStudent(student2);

  // Hiển thị thông tin lớp học
  print('---- Class 10A ----');
  classA.displayClassInfo();
  print('---- Class 10B ----');
  classB.displayClassInfo();

  // Tính điểm trung bình của từng học sinh
  print('Average Score for Student 1 (Alice): ${student1.calculateAverageScore()}');
  print('Average Score for Student 2 (Bob): ${student2.calculateAverageScore()}');
  print('Average Score for Student 3 (Charlie): ${student3.calculateAverageScore()}');
}
