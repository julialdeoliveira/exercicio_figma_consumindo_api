import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:initial_page/models/user_model.dart';
import 'package:initial_page/repositories/logon_authenticator.dart';

var userProvider = StateNotifierProvider<UserNotifier, UserModel?>(
  (ref) => UserNotifier(),
);


UserModel user = UserModel(email: '', id: 0, name: '', password: '');

class UserNotifier extends StateNotifier<UserModel?> {
  UserNotifier() : super(user) {
    getUserInfo('', '');
  }

  Future<void> getUserInfo(String email, String password) async {
    user = await LogonAuthenticator.userLogin(email, password);
    state = user;
  }
}

