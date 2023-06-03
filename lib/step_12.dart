class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

void step_12() {
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  print('All done!');
}
