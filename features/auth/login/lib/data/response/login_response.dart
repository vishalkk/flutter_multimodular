import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'phone')
  final String? phone;

  @JsonKey(name: 'age')
  final int? age;

  LoginResponse({
    required this.name,
    required this.phone,
    required this.age,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}