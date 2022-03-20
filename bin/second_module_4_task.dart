import 'dart:io';

void main() {
  print("Enter your collection of words separated with space: ");
  String? s = stdin.readLineSync();
  if (s == null) {
    throw ("Incorrect input");
  }
  print("Your map is: " + wordCounter(_stringToWords(s)).toString());
}

Map<String, int> wordCounter(List<String> wordList) {
  Map<String, int> result = {};
  for (int i = 0; i < wordList.length; i++) {
    int count = 0;
    for (int j = 0; j < wordList.length; j++) {
      if (wordList[i] == wordList[j]) {
        count++;
      }
    }
    result.addAll(<String, int>{wordList[i]: count});
  }
  return result;
}

List<String> _stringToWords(String s) {
  List<String> wordList = s.split(' ');
  List<String> result = [];
  for (int i = 0; i < wordList.length; i++) {
    if (wordList[i] != '') {
      result.add(wordList[i]);
    }
  }
  return result;
}
