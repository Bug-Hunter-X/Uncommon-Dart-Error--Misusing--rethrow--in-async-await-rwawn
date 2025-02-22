```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // ...
    } else {
      // Handle non-200 status codes.  More specific exceptions might be helpful here
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle network errors separately
    print('Network error: $e');
    // You might want to throw a custom exception here
    throw NetworkException('Network issue: ${e.message}');
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    throw DataFormatException('Invalid JSON data');
  } catch (e) {
    // Handle other unexpected exceptions
    print('Unexpected error: $e');
    rethrow; // Re-throw for higher-level handling
  }
}
```