import 'dart:io';

const num e = 1e-15;
void main() {
  print("Write square root of numer n: ");
  String? a = stdin.readLineSync();
  if (a == null) {
    throw ("Incorrect input");
  }
  print("Write number: ");
  String? b = stdin.readLineSync();
  if (b == null) {
    throw ("Incorrect input");
  }

  print("First result: " + _toPrime(num.parse(a), num.parse(b)).toString());
  print("Second result: " +
      num.parse(a).powerFromNumber(num.parse(b)).toString());
}

extension on num {
  num? powerFromNumber(num a) {
    if (this == 0) {
      return 1;
    }
    num y = 0;
    num x1 = 0;
    num x2 = a * a;
    num x = 0;
    int s = 0;
    while ((y - a).abs() > e) {
      s++;
      x = (x2 + x1) / 2;
      y = _toPrime(this, x);
      if ((y - a) > 0)
        x2 = x;
      else
        x1 = x;
    }
    print(s.toString());
    return x;
  }
}

num _toPrime(num n, num a) {
  if (n == 0) {
    return 1;
  }
  num result = 1;

  for (int i = 0; i <= n - 1; i++) {
    result = result * a;
  }
  return result;
}
