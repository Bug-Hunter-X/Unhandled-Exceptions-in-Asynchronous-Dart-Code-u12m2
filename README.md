# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: neglecting to handle potential exceptions during asynchronous operations. The example shows how to fetch data from an API, and the importance of robust error handling.  The `bug.dart` file contains the flawed code; `bugSolution.dart` provides a corrected version.

## Bug Description

The original code fails to properly handle exceptions that might occur when making a network request or parsing JSON data. This can lead to unexpected crashes or application instability.

## Solution

The corrected code includes comprehensive `try-catch` blocks to handle network errors, JSON parsing errors, and other potential issues.  It also incorporates more informative error messages to assist in debugging.