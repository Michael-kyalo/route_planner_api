import 'package:grpc/grpc.dart';
import 'package:route_planner_api_client/protos/trip.pbgrpc.dart';

class UserService{
  static late UserServiceClient userServiceClient;

  UserService(){
    userServiceClient = UserServiceClient(ClientChannel(
      "10.0.2.2",
      port: 5000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure()
      )
    ));
  }

  Future<UserResponse> createUserWithEmailAndPassWord(String email, String password, String username) async {
    User user = User();
    user.email =email;
    user.username = username;
    user.passhash = password;
    return userServiceClient.createUserWithEmailAndPassword(UserRequest()..user = user);

  }

  Future<UserResponse> sigInWithEmailAndPassword(String email, String password)async {
    User user = User();
    user.email =email;
    user.passhash = password;
    return userServiceClient.signInWithEmailAndPassword(UserRequest()..user = user);
  }

}