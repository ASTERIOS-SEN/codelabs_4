
int addThreeValues({
  required int first,
  required int second,
  required int third,
}) {
  return first + second + third;
}

void step_5() {
  final sum = addThreeValues(
    first: 2,
    second: 5,
    third: 3,
  );

  print(sum);
}
