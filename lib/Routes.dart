import 'package:belajarfluuter/pages/confrim_register_page.dart';
import 'package:belajarfluuter/pages/menu_drawer_page.dart';
import 'package:belajarfluuter/pages/registration_page.dart';
import 'package:belajarfluuter/pages/list_produk_page.dart';
import 'package:belajarfluuter/pages/detail_produk_page.dart';
import 'package:belajarfluuter/pages/main_menu_page.dart';
import 'package:belajarfluuter/menu/home.dart';
import 'package:belajarfluuter/menu/profile.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/pages/login_clone_page.dart';
import 'package:belajarfluuter/pages/list_product_api_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confrimRegistration = "/confrimRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenuPage = "/mainMenu";
  static const String menuHome = "/home";
  static const String menuProfile = "/menuProfile";
  static const String menuDrawer = "/drawer";
  static const String loginClone = "/loginClonePage";
  static const String listProductApi = "/listProductApi";
 

  //masukan ke aray
  static final myPages=[
    GetPage(name: registration, page:()=>RegistrationPage()),
    GetPage(name: confrimRegistration, page:()=>ConfrimRegisterPage()),
    GetPage(name: listProduk, page:()=>ListProdukPage()),
    GetPage(name: detailProduk, page:()=>DetailProdukPage()),
    GetPage(name: mainMenuPage, page: ()=>MainMenuPage()),
    GetPage(name: menuHome,page: () => HomePage(),),
    GetPage(name: menuDrawer,page: () => MenuDrawerPage(),),
    GetPage(name: menuProfile,page: () => ProfilePage(),),
    GetPage(name: loginClone,page: () => LoginCloneFix(),),
    GetPage(name: listProductApi,page: () => ListProductApiView(),),
  ];
}