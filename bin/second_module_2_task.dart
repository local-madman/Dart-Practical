import 'dart:io';

void main() {
  print('Input decimal integer value to convert: ');
  String? dec = stdin.readLineSync().toString();
  if (dec == null || dec == '' || dec == ' ') {
    throw ('Incorrect input');
  }
  int d;
  print('Binary: ${binFunc(d = int.parse(dec))}');
  print('Decimal: ${toDecimal(binFunc(d = int.parse(dec)))}');
}

int binFunc(int a) {
  String res = '';
  for (var i = a; i > 0; i = i ~/ 2) {
    res = (i % 2).toString() + res;
  }
  return int.parse(res);
}

toDecimal(int a) {
  final b = a.toString();
  final List<int> digits = [];
  int res = 0;
  for (var i = 0; i < b.length; i++) {
    digits.add(int.parse(b[i]));
  }
  int c = digits.length;
  for (var i = 0; i < digits.length; i++) {
    res = res + (numDeg(--c) * digits[i]);
  }
  return res;
}

int numDeg(int b) {
  int a = 2;
  int res = 2;
  if (b == 0) {
    return 1;
  }
  for (var i = 1; i < b; i++) {
    res = res * a;
  }
  return res;
}
