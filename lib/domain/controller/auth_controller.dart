import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/networking/base_response.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/auth_repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(EndPoint.forgotPassword),
      body: {
        'email': email,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonEncode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(EndPoint.login),
      body: {
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonEncode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _client.post(
      Uri.parse(EndPoint.logout),
      body: {},
    );
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String name) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(EndPoint.register),
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonEncode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }
}
