import 'package:yoe_yoe_lay/global/common/base_client.dart';
import 'package:yoe_yoe_lay/modules/base/api/home_api.dart';
import 'package:yoe_yoe_lay/modules/base/models/load_menu_model.dart';

class LoadMenusService {
  static Future<List<LoadMenuModel>> fetchMenus() async{
    var response = await BaseClient()
        .get(HomeAPI().loadMenusAPI)
        .catchError((error) => print(error));
    if (response == null){
      throw UnimplementedError();
    };
    return loadMenuFromJson(response);
  }
}