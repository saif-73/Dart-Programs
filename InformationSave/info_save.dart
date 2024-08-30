import 'dart:io';

Future<void> main() async {
  // Create or open 'file.csv' for appending user data
  final file = File('file.csv');

  while (true) {
    // Get user information
    final userName = getUserName();
    final userEmail = getUserEmail();

    // Append user information to the CSV file
    await file.writeAsString(
      '$userName, $userEmail\n',
      mode: FileMode.append,
    );
    print('Saved Successfully!!');

    // Ask user if they want to continue or exit
    final continueResponse = getContinueResponse();
    if (continueResponse != 'y') break; // Exit the loop if response is not 'y'
  }
}

// Function to prompt the user for their full name and validate input
String getUserName() {
  while (true) {
    stdout.write('Enter your Full Name: ');
    final name = stdin.readLineSync()?.trim();

    // Check if name is not null and not empty
    if (name != null && name.isNotEmpty) return name;

    print('Invalid User Name'); // Notify user of invalid input
  }
}

// Function to prompt the user for their email address and validate it
String getUserEmail() {
  // Regular expression to validate email format
  final emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    caseSensitive: false,
  );

  while (true) {
    stdout.write('Enter your Email ID: ');
    final email = stdin.readLineSync()?.trim();

    // Check if email is not null, not empty, and matches the regular expression
    if (email != null && email.isNotEmpty && emailRegExp.hasMatch(email)) {
      return email;
    }

    print('Invalid Email'); // Notify user of invalid input
  }
}

// Function to ask the user if they want to continue or exit the program
String getContinueResponse() {
  while (true) {
    stdout.write('Do you want to continue (y/n): ');
    final response = stdin.readLineSync()?.trim().toLowerCase();

    // Check if the response is 'y' or 'n'
    if (response == 'y' || response == 'n') {
      return response!; // Return the valid response
    }

    print(
        "Invalid input! Enter 'y' for Yes or 'n' for No."); // Notify user of invalid input
  }
}
