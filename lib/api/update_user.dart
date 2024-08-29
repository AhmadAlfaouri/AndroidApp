import 'dart:convert';

UpdateUser updateUserFromJson(String str) => UpdateUser.fromJson(json.decode(str));

String updateUserToJson(UpdateUser data) => json.encode(data.toJson());

class UpdateUser {
    int id;
    String name;
    String email;
    String phone;
    String address;
    DateTime createdAt;
    DateTime updatedAt;

    UpdateUser({
        required this.id,
        required this.name,
        required this.email,
        required this.phone,
        required this.address,
        required this.createdAt,
        required this.updatedAt,
    });

    factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "address": address,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}