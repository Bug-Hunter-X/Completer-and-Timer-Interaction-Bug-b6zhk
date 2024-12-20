```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  Timer(const Duration(seconds: 1), () {
    completer.complete(42);
  });

  final result = await completer.future;
  print('Result: $result');
}
```