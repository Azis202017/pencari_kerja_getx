import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/job.dart';
import '../../../service/job_service.dart';

class   HomeController extends GetxController {
  Rxn<Job> job = Rxn<Job>();
  Rx<bool> isLoading = true.obs;
  RxDouble downloadProgress = 0.0.obs; // Tambahkan ini untuk progres
  Rx<Color> backgroundColor = Colors.white.obs;
  RxDouble fontSize = 14.0.obs;

  void getJob() async {
    try {
      isLoading.value = true;
      downloadProgress.value = 0.0;

      job.value = await JobService().getJobList(
        resultPerPage: 5000,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            downloadProgress.value = received / total;
          }
          
        },
      );

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
  void changeBackgroundColor() {
    backgroundColor.value = backgroundColor.value == Colors.white ? Colors.red : Colors.white ;
  }
  void changeFontSize() {
    fontSize.value = fontSize.value == 14.0? 20.0 : 14.0;
  }

  @override
  void onInit() {
    super.onInit();
    getJob();
  }
}
