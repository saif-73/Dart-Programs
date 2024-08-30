// Function that encodes information:
String myEncode(String userInput) {
  // List of characters that can be encoded
  final List<String> characters =
      (r'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .-?&$()[]{}/*+-%@!#^_=\;:",')
          .split('');

  // List of corresponding codes for each character
  final List<String> codes =
      ('2183, 3588, 1377, 7056, 9971, 8474, 2773, 9106, 5633, 8887, 7841, 9111, 4538, 2836, 6985, 3000, 3879, 3062, 9030, 6829, 7717, 2190, 9945, 3766, 6520, 5456, 4657, 8772, 1910, 2055, 9876, 7444, 8108, 8250, 6619, 9322, 2211, 8025, 1479, 6390, 4188, 2633, 2635, 4895, 5203, 8170, 9640, 5488, 7961, 8662, 7752, 5842, 2400, 3178, 9490, 4328, 5129, 3825, 8849, 3671, 5405, 3142, 3220, 2284, 3882, 1209, 1768, 2675, 6118, 4848, 8423, 4041, 6699, 2340, 2293, 8671, 2758, 3159, 2909, 6879, 4391, 1309, 1627, 5361, 2400, 1560, 9782, 1284, 3692, 5478, 7601')
          .split(', ');

  // Split the user input into a list of characters
  List<String> userInputList = userInput.split('');
  List<String> encodeList = [];

  // Encode each character by mapping it to its corresponding code
  for (int i = 0; i < userInputList.length; i++) {
    if (characters.contains(userInputList[i])) {
      encodeList.add(codes[characters.indexOf(userInputList[i])]);
    } else {
      // If character is not in the list, add an empty string
      encodeList.add('');
    }
  }

  // Join the list of encoded codes into a single string
  String result = encodeList.join();
  return result;
}

// Function that decodes information:
String myDecode(String userInput) {
  // List of characters that can be decoded
  final List<String> characters =
      (r'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .-?&$()[]{}/*+-%@!#^_=\;:",')
          .split('');

  // List of corresponding codes for each character
  final List<String> codes =
      ('2183, 3588, 1377, 7056, 9971, 8474, 2773, 9106, 5633, 8887, 7841, 9111, 4538, 2836, 6985, 3000, 3879, 3062, 9030, 6829, 7717, 2190, 9945, 3766, 6520, 5456, 4657, 8772, 1910, 2055, 9876, 7444, 8108, 8250, 6619, 9322, 2211, 8025, 1479, 6390, 4188, 2633, 2635, 4895, 5203, 8170, 9640, 5488, 7961, 8662, 7752, 5842, 2400, 3178, 9490, 4328, 5129, 3825, 8849, 3671, 5405, 3142, 3220, 2284, 3882, 1209, 1768, 2675, 6118, 4848, 8423, 4041, 6699, 2340, 2293, 8671, 2758, 3159, 2909, 6879, 4391, 1309, 1627, 5361, 2400, 1560, 9782, 1284, 3692, 5478, 7601')
          .split(', ');

  // Split the encoded input into a list of characters
  List<String> userInputList = userInput.split('');

  // Ensure the length of the input is divisible by 4
  if (userInputList.length % 4 != 0) {
    userInputList.removeRange(
        (userInputList.length) - (userInputList.length % 4),
        userInputList.length);
  }

  // Split the input into chunks of 4 characters each
  List<String> userInputSubList = [];
  List<String> decodeList = [];
  var start = 0;
  var end = 4;
  for (int i = 0; i < (userInputList.length) / 4; i++) {
    userInputSubList.add((userInputList.sublist(start, end)).join());
    start = end;
    end = end + 4;
  }

  // Decode each code back to its corresponding character
  for (int i = 0; i < userInputSubList.length; i++) {
    if (codes.contains(userInputSubList[i])) {
      decodeList.add(characters[codes.indexOf(userInputSubList[i])]);
    } else {
      // If code is not in the list, add an empty string
      decodeList.add('');
    }
  }

  // Join the list of decoded characters into a single string
  String result = decodeList.join();
  return result;
}

void main() {
  print(myEncode('Hello!'));
  print(myDecode('825099719111911169854391'));
}
