import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => controller.isLoading.value
          ? Material(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(
                'Downloading: ${(controller.downloadProgress.value * 100).toStringAsFixed(0)}%',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      )
          : Scaffold(
        backgroundColor: controller.backgroundColor.value,
        appBar: AppBar(
          title: const Text("Job List"),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.getJob();  // Trigger the refresh functionality
          },
          child: Scrollbar(
            child: ListView(
              children: controller
                  .job.value?.searchResult?.searchResultItems
                  ?.map((data) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    onTap: () {
                      Get.toNamed(
                        '/detail',
                        arguments: {
                          "data": data,
                        },
                      );
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${data?.matchedObjectDescriptor?.positionTitle}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: controller.fontSize.value,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/city.png',
                                width: 24,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "${data?.matchedObjectDescriptor?.departmentName}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/maps.png',
                                width: 24,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "${data?.matchedObjectDescriptor?.positionLocationDisplay}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList() ??
                  [
                    const SizedBox(height: 24),
                    const Text('No data found'),
                  ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: controller.changeBackgroundColor,
                child: const Icon(Icons.color_lens)),
            const SizedBox(
              height: 12,
            ),
            FloatingActionButton(
                onPressed: controller.changeFontSize,
                child: const Icon(Icons.font_download)),
          ],
        ),
      ),
    );
  }
}
