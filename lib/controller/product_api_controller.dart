import 'package:get/get.dart';
import 'package:belajarfluuter/models/product_model_api.dart';
import 'package:http/http.dart' as http;


class ProductApiController extends GetxController {
  var isLoading = false.obs;
  var produkModel = Rxn<ProdukModel>();

   void getProduct() async {
    try {
      isLoading.value = true;

      final response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      if (response.statusCode == 200) {
        produkModel.value = produkModelFromJson(response.body);
        Get.snackbar("Berhasil","Data produk berhasil diambil",);
      } else {
        Get.snackbar("Gagal", "Cek internet connection");
      }
    } catch (e) {
      Get.snackbar("Gagal", e.toString());
      print("error nya " + e.toString());
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProduct();
  }

  // Implementation for product API calls
}