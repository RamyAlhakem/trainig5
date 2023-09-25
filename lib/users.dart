class Users {
  late int id;
  late double salary;
  late List<String> employees;
  Users({
    this.id = 0,
    this.salary = 0.0,
    this.employees = const [],
  });

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    salary = json['salary'];
    employees = json['employees'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['salary'] = salary;
    data['employees'] = employees;
    return data;
  }
}
