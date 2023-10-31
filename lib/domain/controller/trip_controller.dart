import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/trip_repository.dart';

class TripController implements TripsRepository {
  final ApiClient _client = ApiClient();

  final HttpState httpState;

  TripController(this.httpState);
  @override
  Future<BaseResponse> detailTrips(int id) async {
    String url = "${EndPoint.trip}/$id";
    String method = 'GET';

    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );
    httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    String url = EndPoint.trip;
    String method = 'GET';

    httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(EndPoint.trip),
    );

    httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(massage: response.body);
    }
    return baseResponse;
  }
}
