

import 'package:osta/model/user/login_model.dart';

import '../../model/user/User.dart';

abstract class ostaLoginState{}

class ostaLoginStateinitial extends ostaLoginState{}
class ostaLoginStateloding extends ostaLoginState{}

class ostaLoginStatesussecc extends ostaLoginState{

  final  User  loginmod;

  ostaLoginStatesussecc(this.loginmod);

}

class ostaLoginStateerror extends ostaLoginState{
  final String error;

  ostaLoginStateerror(this.error);
}
class ostaLoginStateicon extends ostaLoginState{}
class RadioButtonLoginState extends ostaLoginState{}
