# Password Generator

## Overview

This Dart program generates a random password of a specified length, ensuring that the password includes a mix of small letters, capital letters, numbers, and special characters.

## Functionality

- **Generates Passwords:** Creates passwords with at least one character from each category (small letters, capital letters, numbers, and special characters).
- **Randomization:** Ensures the password is randomized by shuffling the characters.
- **Length Requirement:** Minimum password length is 4 characters.

## Usage

1. **Run the Program:** Execute the Dart file.
2. **Generate Passwords:** Call `passwordGenerate(int length)` with the desired length.
   - Example: `passwordGenerate(7)` or `passwordGenerate(10)`.

## Notes

- Passwords are guaranteed to include characters from all specified categories.
- The final password length is ensured by including additional characters if necessary.

