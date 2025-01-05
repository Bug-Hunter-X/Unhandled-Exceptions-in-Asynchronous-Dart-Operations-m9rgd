```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      print('Success: ${response.body}');
    } else {
      // Error handling for non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the network request, such as timeouts or connectivity issues
    print('Error: $e');
    // Consider rethrowing the exception if you want it to propagate up the call stack
    // rethrow; 
  }
}
```