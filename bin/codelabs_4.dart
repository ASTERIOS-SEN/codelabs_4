import 'package:codelabs_4/codelabs_4.dart' as codelabs_4;
import 'type_null.dart';
import 'null_aware_operators.dart';

void main(List<String> arguments) {
  //Ejercicio: Parámetros de tipo anulable para genéricos "?"
  typeNull();
  print('');

  // Ejercicio: Operador de aserción nula "!"
  null_assertion();
  print('');

  // Ejercicio: Operadores de acceso nulo "?."
  returnStringNull();
  print('');

  //Ejercicio: Operadores de fusión nula "??"

  //Ejercicio: Asignación definitiva "??="
  asignacionDefinitiva();
  print('');

  //Ejercicio: Comprobación de nulos
  returnGetLength();
  print('');

  //Ejercicio: Uso tardío
  returnLate();
  print('');

  //Ejercicio: Referencias circulares tardías
  returnLate2();
  print('');

  //Ejercicio: tarde y perezoso
  returnLate3();
  print('');

}
