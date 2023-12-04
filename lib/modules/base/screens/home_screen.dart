import 'package:flutter/material.dart';
import 'package:yoe_yoe_lay/global/widgets/screen_frame_widget.dart';
import 'package:yoe_yoe_lay/modules/base/controllers/load_menus_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final LoadMenusController loadMenusController =
      Get.put(LoadMenusController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenFrameWidget(
      title: 'Home',
      body: Center(
        child: GetBuilder<LoadMenusController>(
          init: loadMenusController,
          builder: (controller) {
            if (loadMenusController.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Obx(
                () => GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Set the number of columns
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: loadMenusController.menusList.length,
                    itemBuilder: (context, index) {
                      // Replace this Text widget with your desired widget using data from menusList
                      return Center(
                        child: Column(
                          children: [
                            loadMenusController.menusList[index].web_icon_data !=null?
                              Image(
                                image: NetworkImage(loadMenusController
                                    .menusList[index].web_icon_data!),
                                // width: 10,
                              ):Text("icon"),
                            Text(loadMenusController.menusList[index].name!)
                          ],
                        ),
                      );
                    }),
              );
            }
          },
        ),
      ),
    );
  }
}
