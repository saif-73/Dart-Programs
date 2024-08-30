# User Data Collection and CSV Logging

## Overview

This Dart program collects user names and email addresses, appending them to a CSV file (`file.csv`). It continues to prompt for data until the user decides to stop.

## Functionality

- **Collects User Information:** Prompts for full name and email address.
- **Validates Input:** Ensures non-empty names and valid email formats.
- **Appends to CSV:** Saves data to `file.csv`.
- **Continues or Exits:** Allows user to continue entering data or exit.

## Usage

1. **Run the Program:** Execute the Dart file.
2. **Provide Data:** Enter your name and email when prompted.
3. **Continue or Exit:** Choose to continue or stop based on the prompt.

## Notes

- The `file.csv` will be created if it does not exist and will be updated with new entries.
- Email addresses are validated using a regular expression.
