import 'package:grpc/grpc.dart';
import 'package:route_planner_api_client/protos/trip.pbgrpc.dart';

class TripService {
  static late TripServiceClient client;
  TripService() {
    client = TripServiceClient(ClientChannel("10.0.2.2",
        port: 5000,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
  }

  Future<TripResponse> getTripById(int id) async {
    return client.getTripById(TripRequest()..id = id);
  }

  Future<TripsResponse> getAllTrips() async {
    return client.getAllTrips(Empty());
  }
}
