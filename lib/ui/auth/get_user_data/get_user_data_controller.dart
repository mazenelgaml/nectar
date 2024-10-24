import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/sign_in_model.dart';
import '../../../services/memory.dart';

class GetUserDataController extends GetxController{
  Data? user;
  @override
  void onInit()async {

    super.onInit();
    await CacheHelper.init();
    await getUserProfile();
  }


  Future<void> getUserProfile()async{

   String?id=CacheHelper().getDataString(key: "id");
    try {
      print("66666666666666666666666666666666666666666666666666666666666");
      final response = await Dio().get(
          "http://192.168.133.93:8080/nectar/get/$id"
      );
      if(response.statusCode==200){
        SignInModel r = SignInModel.fromJson(response.data);
        if(r.message=="success"){
          print(id);
          print("66666666666666666666666666666666666666666666666666666666666");
          user=r.data;

        }else{


        }
      }

      print(user?.email);
    }catch(e){}
}
}