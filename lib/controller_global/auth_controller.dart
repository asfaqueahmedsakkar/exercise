import 'package:exercise/providers/auth_provider.dart';
import 'package:exercise/utility/keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  AuthProvider authProvider = AuthProvider();
  GetStorage box = GetStorage();

  String? token;

  String? getToken() {
    token ??= box.read<String?>(StorageKeys.userTokenKey);
    return token;
  }

  bool isAuthorised() => getToken() != null;

  Future signOut() async{
    authProvider=
    box.remove(StorageKeys.userTokenKey);
    token = null;
  }
}
