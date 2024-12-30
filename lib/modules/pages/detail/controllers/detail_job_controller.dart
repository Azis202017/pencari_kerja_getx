import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:pencari_kerja_getx_state/modules/data/models/job.dart';

class DetailJobController extends GetxController {
  final SearchResultItem data = Get.arguments['data'];
  final MapController mapController = MapController();
}