import 'package:get/get.dart';
import 'package:pencari_kerja_getx_state/modules/pages/home/controller/home_controller.dart';


class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController()
      
    );
  }
}
