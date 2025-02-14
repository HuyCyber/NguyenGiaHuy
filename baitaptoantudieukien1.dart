import 'dart:io';

void main() {
  // Nhập thông tin sản phẩm
  print("Nhập tên sản phẩm:");
  String productName = stdin.readLineSync()!;
  
  print("Nhập số lượng mua:");
  int quantity = int.parse(stdin.readLineSync()!);
  
  print("Nhập đơn giá:");
  double unitPrice = double.parse(stdin.readLineSync()!);

  // Tính thành tiền
  double totalAmount = quantity * unitPrice;

  // Áp dụng giảm giá
  double discount = 0.0;
  if (totalAmount >= 1000000) {
    discount = totalAmount * 0.1;  // Giảm 10%
  } else if (totalAmount >= 500000 && totalAmount < 1000000) {
    discount = totalAmount * 0.05;  // Giảm 5%
  }

  // Tính tổng tiền sau giảm giá
  double amountAfterDiscount = totalAmount - discount;

  // Tính thuế VAT 8%
  double vat = amountAfterDiscount * 0.08;

  // Tính tổng thanh toán
  double totalPayment = amountAfterDiscount + vat;

  // In hóa đơn
  print("\nHóa đơn bán hàng:");
  print("Tên sản phẩm: $productName");
  print("Số lượng: $quantity");
  print("Đơn giá: ${unitPrice.toStringAsFixed(2)}");
  print("Thành tiền: ${totalAmount.toStringAsFixed(2)}");
  print("Giảm giá: ${discount.toStringAsFixed(2)}");
  print("Thuế VAT: ${vat.toStringAsFixed(2)}");
  print("Tổng thanh toán: ${totalPayment.toStringAsFixed(2)}");
}
