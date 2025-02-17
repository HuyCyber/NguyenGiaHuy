void main() {
  // Danh sách giỏ hàng
  List<Map<String, dynamic>> cart = [];

  // Thêm sản phẩm vào giỏ hàng
  addProduct(cart, 'Laptop', 2, 15000000);
  addProduct(cart, 'Điện thoại', 1, 8000000);
  
  // Hiển thị giỏ hàng
  displayCart(cart);

  // Sửa sản phẩm trong giỏ hàng
  editProduct(cart, 0, 'Laptop', 3, 14000000); // Sửa số lượng và giá của Laptop

  // Xóa sản phẩm khỏi giỏ hàng
  removeProduct(cart, 1); // Xóa sản phẩm ở vị trí 1 (Điện thoại)

  // Hiển thị lại giỏ hàng sau khi sửa
  displayCart(cart);

  // Tính tổng tiền hóa đơn
  double totalAmount = calculateTotal(cart);
  print('Tổng tiền hóa đơn: $totalAmount VND');
}

// Hàm thêm sản phẩm vào giỏ hàng
void addProduct(List<Map<String, dynamic>> cart, String name, int quantity, double price) {
  Map<String, dynamic> product = {
    'name': name,
    'quantity': quantity,
    'price': price,
  };
  cart.add(product);
  print('Đã thêm sản phẩm: $name vào giỏ hàng.');
}

// Hàm sửa thông tin sản phẩm trong giỏ hàng
void editProduct(List<Map<String, dynamic>> cart, int index, String name, int quantity, double price) {
  if (index >= 0 && index < cart.length) {
    cart[index]['name'] = name;
    cart[index]['quantity'] = quantity;
    cart[index]['price'] = price;
    print('Đã sửa thông tin sản phẩm tại vị trí $index.');
  } else {
    print('Sản phẩm không tồn tại.');
  }
}

// Hàm xóa sản phẩm khỏi giỏ hàng
void removeProduct(List<Map<String, dynamic>> cart, int index) {
  if (index >= 0 && index < cart.length) {
    cart.removeAt(index);
    print('Đã xóa sản phẩm tại vị trí $index.');
  } else {
    print('Sản phẩm không tồn tại.');
  }
}

// Hàm hiển thị giỏ hàng
void displayCart(List<Map<String, dynamic>> cart) {
  if (cart.isEmpty) {
    print('Giỏ hàng rỗng.');
  } else {
    print('Danh sách sản phẩm trong giỏ hàng:');
    for (var i = 0; i < cart.length; i++) {
      print('${i + 1}. ${cart[i]['name']} - ${cart[i]['quantity']} sản phẩm - Giá: ${cart[i]['price']} VND');
    }
  }
}

// Hàm tính tổng tiền hóa đơn
double calculateTotal(List<Map<String, dynamic>> cart) {
  double total = 0.0;
  for (var product in cart) {
    total += product['quantity'] * product['price'];
  }
  return total;
}
