// Exercise: Conditional property access
// If you’re unsure that an expression with a nullable type is null or not, you can use the conditional member access operator (?.) to conditional execute the remainder of the expression.

// // The following calls the 'action' method only if nullableObject is not null
// nullableObject?.action();
// In the code below, try using conditional property access in the stringLength method to fix the error and to return the length of the string or null if it is null:

// En el código a continuación, intente usar el acceso de propiedad condicional en el
// stringLengthmétodo para corregir el error y devolver la longitud de la cadena o nullsi es null

int? stringLength(String? nullableString) {
  return nullableString?.length;
}

void returnStringNull() {
  String? name = null;

  int? nullableString = stringLength('jose');
  int? nullableString2 = stringLength(name);
  print('La logitud del string: $nullableString');
  print('La logitud del string: $nullableString2');
}

//Ejercicio: Operadores de fusión nula "??"
abstract class Store {
  int? storedNullableValue;

  void updateStoredValue() {
    storedNullableValue ??= calculateValue() ?? 0;
  }

  int? calculateValue();
}

//Ejercicio: Asignación definitiva "??="
void asignacionDefinitiva() {
  String text;

  if (DateTime.now().hour < 12) {
    text = "It's morning! Let's make aloo paratha!";
  } else {
    text = "It's afternoon! Let's make biryani!";
  }

  print(text);
  print(text.length);
}

//Ejercicio: Comprobación de nulos
int? getLength(String? str) {
  // Add null check here

  return str?.length;
}

void returnGetLength() {
  String? name = null;

  int? nullableString = getLength('jose');
  int? nullableString2 = getLength(name);
  print('La logitud del string: $nullableString');
  print('La logitud del string: $nullableString2');
}

//Ejercicio: Uso tardío
class Meal {
  late String _description;

  // set description(String desc) {
  //   _description = 'Meal description: $desc';
  // }

  String get description => _description;
}

void returnLate() {
  final myMeal = Meal();
  myMeal._description = 'Feijoada!';
  print(myMeal.description);
}

//Ejercicio: Referencias circulares tardías
class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

void returnLate2() {
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}

//Ejercicio: tarde y perezoso
int _computeValue() {
  print('In _computeValue...');
  return 3;
}


class CachedValueProvider {
  late final _cache = _computeValue();
  int get value => _cache;
}

void returnLate3() {
  print('Calling constructor...');
  var provider = CachedValueProvider();
  print('Getting value...');
  print('The value is ${provider.value}!');
}