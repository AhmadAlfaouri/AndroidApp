import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String name;
  String phone;
  String email;
  String password;
  String address;

  Welcome({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.address,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    password: json["password"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "phone": phone,
    "email": email,
    "password": password,
    "address": address,
  };
}
