```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      print('Success: ${response.body}');
    } else {
      // More specific error handling 
      throw HttpException('HTTP error! Status code: ${response.statusCode}, body: ${response.body}');
    }
  } on SocketException catch (e) {
    print('SocketException: $e. This indicates a network connectivity issue.');
  } on TimeoutException catch (e) {
    print('TimeoutException: $e. The request timed out.');
  } on HttpException catch (e) {
    print('HttpException: $e.  This is a more specific HTTP error.');
  } catch (e) {
    // Catch any other unexpected exceptions
    print('Unexpected error: $e');
    // Consider logging more detailed information
  }
}

class HttpException implements Exception {
  final String message;
  HttpException(this.message);
  @override
  String toString() => message;
}
```