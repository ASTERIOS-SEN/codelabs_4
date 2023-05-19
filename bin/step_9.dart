import 'dart:math';

class RandomStringProvider {
  String? get value => Random().nextBool() ? 'A String!' : null;
}

void printString(String str) => print(str);

void step_9() {
  final provider = RandomStringProvider();

  final str = provider.value;

  if (provider.value == null) {
    print('The value is null.');
  } else {
    print('The value is not null, so print it!');
    printString(str!);
  }
}
