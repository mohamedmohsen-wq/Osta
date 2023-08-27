

import 'package:osta/model/market/Product.dart';
import 'package:osta/model/market/market_model.dart';

abstract class marketAppstate{}



class marketAppstateinitials extends marketAppstate{}
class marketAppstatechangebottom extends marketAppstate{}
class marketStateloding extends marketAppstate{}

class marketStatesussecc extends marketAppstate{



}

class marketStateerror extends marketAppstate{
  final String error;

  marketStateerror(this.error);
}