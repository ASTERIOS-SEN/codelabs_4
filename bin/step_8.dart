int getLength(String? str) {
  // Try throwing an exception here if `str` is null.
  if (str == null) {
    // throw Exception("str es nullo!");
    return 0;
  }

  return str.length;
}

void step_8() {
  print(getLength(null));
}
