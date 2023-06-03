void step_6() {
  String? text;

  if (DateTime.now().hour < 12) {
   text = "It's morning! Let's make aloo paratha!";
  } else {
   text = "It's afternoon! Let's make biryani!";
  }

  print(text);
  print(text.length);
}