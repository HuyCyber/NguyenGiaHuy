// Hàm kiểm tra số nguyên tố
bool isPrime(int n) {
  // Số nguyên tố phải lớn hơn 1
  if (n <= 1) {
    return false;
  }

  // Kiểm tra chia hết từ 2 đến căn bậc hai của n
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false; // Nếu n chia hết cho i, không phải số nguyên tố
    }
  }
  
  return true; // Nếu không chia hết cho số nào, là số nguyên tố
}

void main() {
  // Gán vào số nguyên cần kiểm tra
  int number = 29; // Thay đổi số ở đây để kiểm tra các số khác
  
  // Sử dụng hàm isPrime() để kiểm tra và hiển thị kết quả
  if (isPrime(number)) {
    print('$number là số nguyên tố.');
  } else {
    print('$number không phải là số nguyên tố.');
  }
}
