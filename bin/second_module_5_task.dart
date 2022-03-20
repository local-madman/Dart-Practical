import 'dart:io';

void main() {
  print("Enter collection of words separated with space: ");
  String? s = stdin.readLineSync();
  if (s == null) {
    throw ("Incorrect input");
  }
  print(searchNumbersInString(_stringToWords(s)));
}

Map<String, int> wordsNums = {
  "zero": 0,
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5,
  "six": 6,
  "seven": 7,
  "eight": 8,
  "nine": 9,
};

List<String> _stringToWords(String s) {
  List<String> wordList = s.split(' ');
  return wordList;
}

Set<int?> searchNumbersInString(List<String> collectionWord) {
  Set<int?> result = {};
  for (int i = 0; i < collectionWord.length; i++) {
    if (wordsNums.containsKey(collectionWord[i]) == true) {
      if (wordsNums[collectionWord[i]] != null) {
        result.add(wordsNums[collectionWord[i]]);
      }
    }
  }
  return result;
}
