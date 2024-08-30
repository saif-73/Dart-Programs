# Encoding and Decoding Functions

## Overview

This code provides two functions for encoding and decoding strings:

- **`myEncode(String userInput)`**: Encodes a string into a sequence of numerical codes.
- **`myDecode(String userInput)`**: Decodes a sequence of numerical codes back into the original string.

## Functions

### `myEncode`

- **Purpose:** Converts a string into numerical codes.

### `myDecode`

- **Purpose:** Converts numerical codes back into the original string.

## Usage

```dart
void main() {
  String encoded = myEncode('Hello!');
  print(encoded); // Prints encoded string

  String decoded = myDecode(encoded);
  print(decoded); // Prints 'Hello!'
}
