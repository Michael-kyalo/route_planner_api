import 'package:grpc/grpc.dart';
import 'package:route_planner_api/route_planner_api.dart';

void main() async {
  final channel = ClientChannel('localhost',
      port: 5000,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));

  final stub = TripServiceClient(channel);

  var response = await stub.getAllTrips(Empty());

  var response2 = await stub.getTripById(TripRequest()..id = 1);

  print(response2);

  print(response);
}
