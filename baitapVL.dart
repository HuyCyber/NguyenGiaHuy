void main(list<String>args){
  
  print("Nhap N:");
  var n = stdin.readLinesynce().toString();

  //bai1: Tinh tong so nguyen
  var tong=0;
  for (var i=1;i<=n;i++){
    //i= 1 2 3 4 5 6 7...n
    tong=tong+1;

  }
  print(tong);

  //bai2:Bang cuu chuong
  for (var i=1;i<=n;i++){
    //i= 1 2 3 4 5 6 7...n
     print("$i x $n = $(n+i)");
  }

  //bai3: Dem so chan va le
  var demChan=0;
  var demLe=0;
  for (var i=1;i<=n;i++){
    if(i%2==0){
      //so chan
      demChan++;
    }else{
      //so le
      demLe++;
    }
    }
    print("so chan: $demChan");
    print("so le: $demLe");
}

//bai4 Tinh giai thua cua mot so
var giaiThua=1;
for (var i=1;i<=n;i++){
    //i= 1 2 3 4 5 6 7...n
     giaiThua*=i;
}
print(giaiThua);


//bai5:Dao nguoc so
var ketQua="";
var phanNguyen=n;
for(var i=0;i<n.toString().length;i++){
  ketQua=ketQua +(phanNguyen%10).toString();
  phanNguyen=phanNguyen~/10;
}
print(ketQua);
