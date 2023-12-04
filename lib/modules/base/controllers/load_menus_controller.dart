import 'package:get/get.dart';
import 'package:yoe_yoe_lay/modules/base/models/load_menu_model.dart';
import 'package:yoe_yoe_lay/modules/base/service/load_menus_service.dart';

class LoadMenusController extends GetxController {
  var isLoading = true.obs;
  // var menusList = List<LoadMenuModel>[].obs;
  var menusList = <LoadMenuModel>[].obs;


  @override
  void onInit() {
    fetchMenus();
    super.onInit();
  }

  void fetchMenus() async {
    try {
      isLoading(true);
      var products = await LoadMenusService.fetchMenus();
      if (products != null) {
        menusList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
