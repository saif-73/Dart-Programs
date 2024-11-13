//Text list
const List<String> names = [
  "Zara",
  "Anna",
  "John",
  "Bella",
  "Sophia",
  "Oliver",
  "Mia",
  "Ethan",
  "Zoe",
  "Liam",
  "Lucas",
  "Emma",
  "Amelia",
  "Noah",
  "Mason",
  "James",
  "Charlotte",
  "Isabella",
  "Alexander",
  "Jackson",
  "Grace",
  "Benjamin",
  "Elijah",
  "Ava",
  "Aiden",
  "Harper",
  "Henry",
  "Samuel",
  "Madison",
  "Jackson",
  "Sebastian",
  "Victoria",
  "Chloe",
  "Ella",
  "Daniel",
  "William",
  "Lily",
  "Levi",
  "Isaac",
  "Scarlett",
  "Matthew",
  "Jackson",
  "Dylan",
  "Gabriel",
  "Ruby",
  "Zachary",
  "Hazel",
  "Jack",
  "Leo",
  "Gabriella"
];

//Sorting by only first character of string
List<String> sortByFirstCharStringList(List<String> stringList) {
  for (int i = 0; i < (stringList.length - 1); i++) {
    for (int j = 0; j < stringList.length - i - 1; j++) {
      if (stringList[j].codeUnitAt(0) > stringList[j + 1].codeUnitAt(0)) {
        String temp = stringList[j];
        stringList[j] = stringList[j + 1];
        stringList[j + 1] = temp;
      }
    }
  }
  return stringList;
}

//Sorting by taking into account all the characters of string
List<String> sortByWholeCharStringList(List<String> stringList) {
  for (int i = 0; i < (stringList.length - 1); i++) {
    for (int j = 0; j < stringList.length - i - 1; j++) {
      if (stringList[j].compareTo(stringList[j + 1]) > 0) {
        String temp = stringList[j];
        stringList[j] = stringList[j + 1];
        stringList[j + 1] = temp;
      }
    }
  }
  return stringList;
}

void main() {
  var a = sortByFirstCharStringList(names);
  var b = sortByWholeCharStringList(names);
  print(a);
  print(b);
}
