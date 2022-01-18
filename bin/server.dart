import 'package:grpc/grpc.dart';
import 'package:route_planner_api/src/service_classes/trip_service.dart';

void main() async {
  final services = <Service>[TripService()];
  final server = Server(services);
  await server.serve(port: 5000);
  print("Server Listening to Requests at LocalHost::/${server.port}");
}
