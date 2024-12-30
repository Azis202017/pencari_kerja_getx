import 'package:get/get.dart';
import 'package:pencari_kerja_getx_state/modules/pages/detail/controllers/detail_job_controller.dart';

class DetailJobBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailJobController());
  }

}