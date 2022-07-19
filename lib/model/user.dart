class User {
  final String name;
  final String email;
  final String image;

  const User({required this.name, required this.email, required this.image});

  static User fromJson(json) =>
      User(name: json['name'], email: json['email'], image: json['image']);
}
