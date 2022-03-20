import 'dart:io';

void main() {
  print('Enter string of chracters and numbers: ');
  String? a = stdin.readLineSync();
  if (a == null || a == '' || a == ' ') {
    throw ('Incorrect input');
  }
  print('Numbers: ${numInText(a)}');
}

List<int> numInText(String text) {
  List<int> res = [];
  List<String> listT = text.split(' ');
  for (var item in listT) {
    if (int.tryParse(item) != null) {
      res.add(int.parse(item));
    }
  }
  return res;
}
