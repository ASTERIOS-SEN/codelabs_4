class Meal {
  late String description;

  void setDescription(String str) {
    description = str;
  }
}

void step_11() {
  final myMeal = Meal();
  myMeal.setDescription('Feijoada!');
  print(myMeal.description);
}
