

import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ConfrimRegisterController extends GetxController{

late String email;
late String alamat;
late String kelamin;
late String no;late String nama;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    email = arguments['email'];
    alamat = arguments['alamat'];
    kelamin = arguments['kelamin'];
    no = arguments['no'];
  }
}



