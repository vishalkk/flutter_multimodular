class LoginResponse {
  final String token;
  final String userId;
  final String message;

  LoginResponse({
    required this.token,
    required this.userId,
    required this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'] as String,
      userId: json['userId'] as String,
      message: json['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'userId': userId,
      'message': message,
    };
  }
}