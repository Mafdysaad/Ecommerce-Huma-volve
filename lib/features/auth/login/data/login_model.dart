class LoginModel {
  String? accessToken;
  String? refreshToken;

  LoginModel({this.accessToken, this.refreshToken});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    accessToken: json['access_token'] as String?,
    refreshToken: json['refresh_token'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'access_token': accessToken,
    'refresh_token': refreshToken,
  };
}
