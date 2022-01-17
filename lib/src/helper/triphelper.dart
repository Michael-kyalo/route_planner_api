import '../../route_planner_api.dart';

Trip convertToTrip(Map trip) => Trip.fromJson(
    '{"1": ${trip['id']}, "2" : "${trip['title']}", "3" : "${trip['description']}","4" : "${trip['status']}","5" : "${trip['budget']}"}');

Activity convertToActivity(Map activity) => Activity.fromJson(
    ' {"1":${activity['tripId']}, "2" : ${activity['id']}, "3" : ${activity['status']}, "4" : "${activity['title']}"}');
