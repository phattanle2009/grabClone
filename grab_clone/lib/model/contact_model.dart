import 'dart:convert';

class ContactModel {
  final int id;
  final String fullName;
  final String phoneNumber;

  ContactModel({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
  });

  factory ContactModel.fromMap(Map<String, dynamic> json) => new ContactModel(
        id: json["id"],
        fullName: json["full_name"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "full_name": fullName,
        "phone_number": phoneNumber,
      };
}

ContactModel contactFromJson(String str) {
  final jsonData = json.decode(str);
  return ContactModel.fromMap(jsonData);
}

String contactToJson(ContactModel data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}
