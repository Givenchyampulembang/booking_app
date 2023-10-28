import 'package:booking_app/data/model/trip/trip.dart';

import '../../data/model/auth/login.dart';

class BaseResponse {
  BaseResponse({
    this.massage,
    this.result,
  });

  BaseResponse.fromJson(dynamic json) {
    massage = json['massage'];
    result = json["result"] != null ? Result.fromJson(json['result']) : null;
  }
  String? massage;
  Result? result;
  BaseResponse copyWith({
    String? massage,
    Result? result,
  }) =>
      BaseResponse(
        massage: massage ?? this.massage,
        result: result ?? this.result,
      );
}

class Result {
  Result({
    this.login,
    this.trip,
    this.yourRoomies,
    this.otherMatches,
  });

  Result.fromJson(dynamic json) {
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    trip = json['trip'] != null ? Trip.fromJson(json['trip']) : null;
    if (json['yourRoomies'] != null) {
      yourRoomies = [];
      json['yourRoomies'].forEach((v) {
        yourRoomies?.add(Trip.fromJson(v));
      });
    }
    if (json['otherMatches'] != null) {
      otherMatches = [];
      json['otherMatches'].forEach((v) {
        otherMatches?.add(Trip.fromJson(v));
      });
    }
  }

  Login? login;
  Trip? trip;
  List<Trip>? yourRoomies = [];
  List<Trip>? otherMatches = [];

  Result copyWith({
    Login? login,
    Trip? trip,
  }) =>
      Result(
        login: login ?? this.login,
        trip: trip ?? this.trip,
        yourRoomies: yourRoomies ?? this.yourRoomies,
        otherMatches: otherMatches ?? this.otherMatches,
      );
}
