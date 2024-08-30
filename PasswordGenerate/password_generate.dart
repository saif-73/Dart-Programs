import 'dart:math';

// This function generates a password of the specified length (minimum length = 4)
String passwordGenerate(int length) {
  // Lists containing characters for the password
  List<String> smallAlphabets = ('abcdefghijklmnopqrstuvwxyz').split('');
  List<String> capitalAlphabets = ('ABCDEFGHIJKLMNOPQRSTUVWXYZ').split('');
  List<String> numbers = ('1234567890').split('');
  List<String> specialCharacters = (r'@$#&').split('');

  // List to store the final password characters
  List<String> finalResult = [];

  // Determine how many complete sets of each type of character are needed
  int integerDivide = length ~/ 4; // Number of complete sets
  int modulusDivide = length % 4; // Remainder to complete the password

  // Random number generator for selecting characters
  Random randomGenerate = Random();

  // Generate the base password with at least one character from each category
  for (int i = 0; i < integerDivide; i++) {
    finalResult
        .add(smallAlphabets[randomGenerate.nextInt(smallAlphabets.length)]);
    finalResult
        .add(capitalAlphabets[randomGenerate.nextInt(capitalAlphabets.length)]);
    finalResult.add(numbers[randomGenerate.nextInt(numbers.length)]);
    finalResult.add(
        specialCharacters[randomGenerate.nextInt(specialCharacters.length)]);

    // Handle any remaining characters needed to reach the desired length
    if (i == integerDivide - 1) {
      if (modulusDivide == 1) {
        finalResult.add(numbers[randomGenerate.nextInt(numbers.length)]);
      } else if (modulusDivide == 2) {
        finalResult.add(numbers[randomGenerate.nextInt(numbers.length)]);
        finalResult.add(specialCharacters[
            randomGenerate.nextInt(specialCharacters.length)]);
      } else if (modulusDivide == 3) {
        finalResult.add(numbers[randomGenerate.nextInt(numbers.length)]);
        finalResult.add(specialCharacters[
            randomGenerate.nextInt(specialCharacters.length)]);
        finalResult
            .add(smallAlphabets[randomGenerate.nextInt(smallAlphabets.length)]);
      }
    }
  }

  // Shuffle the list to ensure the password is randomized
  finalResult.shuffle();

  // Convert the list of characters into a single string
  String finalPassword = finalResult.join();
  return finalPassword;
}

void main() {
  print(passwordGenerate(7));
  print(passwordGenerate(10));
}
