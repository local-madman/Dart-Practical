import 'dart:io';
import 'dart:math';

void main() {
  print('Enter first and second number: ');
  String inpA = stdin.readLineSync().toString();
  String inpB = stdin.readLineSync().toString();

  print('Enter number for prime factor calculation: ');
  String inpC = stdin.readLineSync().toString();

  if (inpA == '' ||
      inpA == ' ' ||
      int.tryParse(inpA) == null ||
      inpB == '' ||
      inpB == ' ' ||
      int.tryParse(inpB) == null ||
      inpC == '' ||
      inpC == ' ' ||
      int.tryParse(inpC) == null) {
    throw ('Incorrect input');
  }
  int a, b, c;
  print('GCD is ${gcd(a = int.parse(inpA), b = int.parse(inpB))}');
  print('GCD is ${gcm(a = int.parse(inpA), b = int.parse(inpB))}');
  print('Prime factors is: ${primeFactor(c = int.parse(inpC))}');
}

int gcd(int a, int b) {
  int sw;
  if (a < b) {
    sw = a;
    a = b;
    b = sw;
  }
  while (b != 0) {
    a %= b;
    sw = a;
    a = b;
    b = sw;
  }
  return a;
}

int gcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

List<int> primeFactor(int x) {
  List<int> factor = [];
  for (int i = 2; i <= sqrt(x); i++) {
    while (x % i == 0) {
      factor.add(i);
      x ~/= i;
    }
  }
  if (x != 1) {
    factor.add(x);
  }
  return factor;
}
