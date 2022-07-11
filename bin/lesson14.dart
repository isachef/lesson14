void main(List<String> args) {
  Aspirant isa = Aspirant(
      firstname: 'isa', lastname: 'smailbekov', group: 'ivt2', avaregeMark: 5);
  print(isa.getScholarship());
}

class Student {
  String firstname, lastname, group;
  double avaregeMark;

  Student({
    required this.firstname,
    required this.lastname,
    required this.group,
    required this.avaregeMark,
  });

  int getScholarship() => avaregeMark == 5 ? 20000 : 0;
}

class Aspirant extends Student {
  Aspirant({
    required super.firstname,
    required super.lastname,
    required super.group,
    required super.avaregeMark,
  });

  @override
  int getScholarship() => avaregeMark == 5 ? 40000 : 18000;
}
