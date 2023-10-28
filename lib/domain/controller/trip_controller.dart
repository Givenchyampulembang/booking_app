import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/networking/base_response.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/trip_repository.dart';

class TripController implements TripsRepository {
  final ApiClient _client = ApiClient();
  @override
  Future<BaseResponse> detailTrips(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${EndPoint.trip}/'$id"),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonEncode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(EndPoint.trip),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonEncode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }
}
