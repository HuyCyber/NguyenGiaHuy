import 'dart:io';

void main() {
  // Nhập thông tin nhân viên
  print("Nhập họ tên nhân viên:");
  String name = stdin.readLineSync()!;
  
  print("Nhập số giờ làm việc:");
  double hoursWorked = double.parse(stdin.readLineSync()!);
  
  print("Nhập lương mỗi giờ:");
  double hourlyWage = double.parse(stdin.readLineSync()!);

  // Tính tổng lương
  double totalSalary = hoursWorked * hourlyWage;
  double bonus = 0.0;

  // Thêm phụ cấp nếu làm hơn 40 giờ
  if (hoursWorked > 40) {
    bonus = totalSalary * 0.2;  // Thêm 20% phụ cấp
  }

  totalSalary += bonus;

  // Tính thuế thu nhập
  double tax = 0.0;
  if (totalSalary > 10000000) {
    tax = totalSalary * 0.1;  // Trừ 10% nếu lương trên 10 triệu
  } else if (totalSalary >= 7000000 && totalSalary <= 10000000) {
    tax = totalSalary * 0.05;  // Trừ 5% nếu lương từ 7 đến 10 triệu
  }

  // Lương thực lãnh
  double netSalary = totalSalary - tax;

  // In kết quả
  print("\nThông tin nhân viên:");
  print("Họ tên: $name");
  print("Tổng lương trước thuế: ${totalSalary.toStringAsFixed(2)}");
  print("Thuế thu nhập: ${tax.toStringAsFixed(2)}");
  print("Lương thực lãnh: ${netSalary.toStringAsFixed(2)}");
}
