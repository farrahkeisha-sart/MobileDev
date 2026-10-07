import 'package:belajarfluuter/pages/confrim_register_page.dart';
import 'package:belajarfluuter/pages/registration_page.dart';
import 'package:belajarfluuter/pages/list_produk_page.dart';
import 'package:belajarfluuter/pages/detail_produk_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confrimRegistration = "/confrimRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
 

  //masukan ke aray
  static final myPages=[
    GetPage(name: registration, page:()=>RegistrationPage()),
    GetPage(name: confrimRegistration, page:()=>ConfrimRegisterPage()),
    GetPage(name: listProduk, page:()=>ListProdukPage()),
    GetPage(name: detailProduk, page:()=>DetailProdukPage()),
   
  ];
}