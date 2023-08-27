import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osta/block/market/states.dart';
import 'package:osta/model/market/Product.dart';
import 'package:osta/model/market/market_model.dart';
import 'package:osta/shered/componnents/conastaks.dart';
import 'package:osta/shered/network/dio_helber.dart';
import 'package:osta/shered/network/remot/end_points.dart';




class marketAppcubit extends Cubit<marketAppstate>{
  marketAppcubit():super(marketAppstateinitials());
  static marketAppcubit get(context)=>BlocProvider.of(context);




}