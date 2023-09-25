class MyData {
  final String name;
  final int age;

  MyData(this.name, this.age);

  // Deserialize JSON to create an object.
  factory MyData.fromJson(Map<String, dynamic> json) {
    return MyData(
      json['name'] as String,
      json['age'] as int,
    );
  }
  // Serialize the object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}