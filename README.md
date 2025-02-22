# Uncommon Dart Error: Misusing `rethrow` in async/await

This example showcases a potential issue in Dart's asynchronous error handling.  Improper use of `rethrow` within `async` functions can lead to unexpected behavior. This is often seen when exceptions are not properly handled in asynchronous processes.

The provided code demonstrates best practices:  a clear separation of network error handling and data processing, and appropriate use of `rethrow` to maintain a consistent error handling flow within and outside of the asynchronous function. 