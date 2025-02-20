```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
        print('Data fetched successfully: $jsonData');
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding errors appropriately
      } 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('Error fetching data: $e');
    // Additional error handling, such as retrying or showing an error message to the user.
  }
}
```