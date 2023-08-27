import 'package:osta/model/profile.dart';
import 'package:osta/model/user/login_model.dart';

abstract class OstaState{}
class InitialState extends OstaState{}
class ChangeIndexBottomNavBarState extends OstaState{}
class Changecamira extends OstaState{}
class Changecontr extends OstaState{}
class ChangeGoverIndexState extends OstaState{}
class ChangeservesIndexState extends OstaState{}
class IndexMyOrderScreenState extends OstaState{}
class LoginPasswordState extends OstaState{}
class LoginPasswordState2 extends OstaState{}
class RadioButtonLoginState extends OstaState{}
class RestartDurationState extends OstaState{}
class ChangeIsChecked8State extends OstaState{}
class AskForABasicWarrantyState extends OstaState{}
class AskForABasicWarrantyIsShowState extends OstaState{}
class ChangeLangaugeState extends OstaState{}
class ChangeNotificationSwitchState extends OstaState{}
class ChangeTimeState extends OstaState{}
class XState extends OstaState{}
class TeartebState extends OstaState{}
class FilterState extends OstaState{}
class Gavers extends OstaState{}
class Citesss extends OstaState{}
class SaveInMenuState extends OstaState{}
class valueScreen38State extends OstaState{}
class valueScreen38_1State extends OstaState{}
class OldPasswordState extends OstaState{}
class NewPasswordState extends OstaState{}
class NewPasswordDOneState extends OstaState{}
class  validatorState extends OstaState{}
class LogindataStatesussecc extends OstaState{
  userLogin? profileModell;
  LogindataStatesussecc(this.profileModell);

}

class LogindataStateerror extends OstaState{
  final String error;

  LogindataStateerror(this.error);
}
class LogindataStateloding extends OstaState{

}
class OstaRegisterStateinitial extends OstaState{}
class OstaRegisterStateloding extends OstaState{}

class OstaRegisterStatesussecc extends OstaState{
  final  userLogin  Register;

  OstaRegisterStatesussecc(this.Register);

}

class OstaRegisterStateerror extends OstaState{
  final String error;

  OstaRegisterStateerror(this.error);
}
class OstaRegisterStateicon extends OstaState{}
class OstaupdateStateloding extends OstaState{}
class OstaStatesussecc extends OstaState{}
class OstaStateerror extends OstaState{
  final String error;

  OstaStateerror(this.error);
}
class OstaServersStateloding extends OstaState{}
class OstaServerssussecc extends OstaState{}
class OstaServerserror extends OstaState{
  final String error;

  OstaServerserror(this.error);
}
class OstaorderStateloding extends OstaState{}
class Ostaorderssussecc extends OstaState{}
class Ostaorderserror extends OstaState{
  final String error;

  Ostaorderserror(this.error);
}
class OstaGovernorateStateloding extends OstaState{}
class OstaSGovernoratesussecc extends OstaState{}
class OstaSChangelens extends OstaState{}
class OstaSchangenewsappstatw extends OstaState{}
class OstaGovernorateerror extends OstaState{
  final String error;

  OstaGovernorateerror(this.error);
}
class OstaAcountStateloding extends OstaState{}
class OstaAcountssussecc extends OstaState{}
class OstaAcounterror extends OstaState{
  final String error;

  OstaAcounterror(this.error);
}
class marketStateloding extends OstaState{}

class marketStatesussecc extends OstaState{



}

class marketStateerror extends OstaState{
  final String error;

  marketStateerror(this.error);
}

