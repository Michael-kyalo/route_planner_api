// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:grpc/src/server/call.dart';
import 'package:route_planner_api/route_planner_api.dart';
import 'package:route_planner_api/src/db/mock_data.dart';
import 'package:route_planner_api/src/helper/triphelper.dart';
import 'package:mongo_dart/mongo_dart.dart';

class TripService extends TripServiceBase {
  Future<Db> initDb() async {
    return Db.create(
        "mongodb+srv://mikonski:mikonski@cluster0.ialai.mongodb.net/trip?retryWrites=true&w=majority");
  }

  @override
  Future<TripsResponse> getAllTrips(ServiceCall call, Empty request) async {
    final db = await initDb();
    await db.open();
    final tripCollection = db.collection('trips');

    print(await tripCollection.find().toList());

    final tripDocumentList = await tripCollection.find().toList();

    final List<Trip> tripList =
        tripDocumentList.map((trip) => convertToTrip(trip)).toList();

    // final List<Trip> tripList =
    //     trips.map((trip) => convertToTrip(trip)).toList();
    // for (var trip in tripList) {
    //   final activityList = activities
    //       .where((element) => element['tripId'] == trip.id)
    //       .map((activity) => convertToActivity(activity))
    //       .toList();

    //   trip..activities.addAll(activityList);
    // }

    return TripsResponse()..trips.addAll(tripList);
  }

  @override
  Future<TripResponse> getTripById(
      ServiceCall call, TripRequest request) async {
    final tripList = trips
        .where((element) => element['id'] == request.id)
        .map((trip) => convertToTrip(trip))
        .toList();

    for (var trip in tripList) {
      final activityList = activities
          .where((element) => element['tripId'] == trip.id)
          .map((activity) => convertToActivity(activity))
          .toList();

      trip..activities.addAll(activityList);
    }

    return TripResponse()..trip = tripList[0];
  }
}
