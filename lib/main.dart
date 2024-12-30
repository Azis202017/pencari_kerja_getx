import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pencari_kerja_getx_state/modules/pages/detail/bindings/detail_bindings.dart';
import 'package:pencari_kerja_getx_state/modules/pages/home/bindings/home_bindings.dart';
import 'package:pencari_kerja_getx_state/modules/pages/home/home_view.dart';

import 'modules/pages/detail/detail_job.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [              
        GetPage(
          name : "/",
          page: () => const HomeView(),
          binding: HomeBindings(),  
        ),
        GetPage(
          name: "/detail",
          page: () => const DetailJobView(),
          binding: DetailJobBindings(),
        ),
      ],
    ); 
  } 
}
main() => runApp(const MyApp());
Future<Uri?> getVmUri() async {
  ServiceProtocolInfo serviceProtocolInfo = await Service.getInfo();
  return serviceProtocolInfo.serverUri;
}