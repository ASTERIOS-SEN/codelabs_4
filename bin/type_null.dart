void typeNull() {
  // Null is a type with only one value: null.
  // It is the default value of variables that are not initialized.
  // It is the default value of optional parameters.
  // It is the return type of functions that do not return a value.
  // It is the type of the expression t
  // where t is a variable of type T?.
  List<String?> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];

  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}

int? couldReturnNullButDoesnt() => -3;

void null_assertion() {
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first!; // first item in the list
  int c = couldReturnNullButDoesnt()!.abs(); // absolute value

  print('a is $a.');
  print('b is $b.');
  print('c is $c.');
}
