import 'package:dio/dio.dart';
import 'package:pencari_kerja_getx_state/modules/constant.dart';
import 'package:pencari_kerja_getx_state/modules/data/models/job.dart';

class JobService {

  Future<Job?> getJobList({
    String? keyword,
    int? resultPerPage = 250,
    Function(int, int)? onReceiveProgress,
  }) async {
    try {
      dio.options.headers['Authorization-Key'] = 'VKZopuCAaDbRPZ3+8PXPLXwUE18I0RonqBbouqZnisQ=';
      dio.options.headers['User-Agent'] = 'azisa6980@gmail.com';

      Response response = await dio.get(
        '/Search',
        queryParameters: {
          "ResultsPerPage": resultPerPage,
        },
        onReceiveProgress: onReceiveProgress, // Melacak progres download
      );
      print(response.data);

      if (response.statusCode == 200) {
        return Job.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
