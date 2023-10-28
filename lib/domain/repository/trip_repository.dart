import 'package:booking_app/config/networking/base_response.dart';

abstract class TripsRepository {
  Future<BaseResponse> detailTrips(int id);
  Future<BaseResponse> getTrips();
}
