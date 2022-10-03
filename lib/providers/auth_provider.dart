import 'package:exercise/models/request_models/sign_up_request.dart';
import 'package:exercise/utility/apis.dart';
import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  logIn({required SignUpRequest request}) {
    post(Apis.account, request.toJson(), decoder: (data) {});
  }
}
