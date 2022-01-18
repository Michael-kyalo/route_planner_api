import '../../route_planner_api.dart';

Trip convertToTrip(Map trip) {
  return Trip.fromJson(
      '{"1":"${stringFromObjectId(trip['_id'])}","2" : "${trip['title']}", "3" : "${trip['description']}","4" : "${trip['status']}"}');
}

Activity convertToActivity(Map activity) => Activity.fromJson(
    ' {"1":${activity['tripId']}, "2" : ${activity['id']}, "3" : ${activity['status']}, "4" : "${activity['title']}"}');

String stringFromObjectId(id) {
  print(id.toString());
  return id.toString().replaceAll('ObjectId("', '').replaceAll('")', '');
}
