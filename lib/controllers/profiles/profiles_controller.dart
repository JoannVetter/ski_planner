import 'package:get/get.dart';
import 'package:ski_planner/models/profiles_model.dart';
import 'package:flutter/material.dart';

class ProfilesController extends GetxController {
  final _profiles = <ProfilesModel>[].obs;

  List<ProfilesModel> get profiles => _profiles;


  @override
  void onInit() {
    super.onInit();
    _profiles([
      ProfilesModel(userID: 0, isAvailable: [false,true,false,true,false]),
      ProfilesModel(userID: 1, isAvailable: [true,false,true,false,false]),
      ProfilesModel(userID: 2, isAvailable: [false,true,false,false,true]),
    ]);
  }
}
