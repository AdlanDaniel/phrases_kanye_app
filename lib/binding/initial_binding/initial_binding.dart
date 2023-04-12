import 'package:get/get.dart';
import 'package:phrases_kanye_west/features/home/controller/home_controller.dart';

import 'package:phrases_kanye_west/features/repository/repository.dart';
import 'package:phrases_kanye_west/features/service/service.dart';
import 'package:http/http.dart' as http;

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Repository>(() => RepositoryImpl(restclient: http.Client()));
    Get.lazyPut(() => Service(repository: Get.find<Repository>()));
    Get.lazyPut(() => HomeController(service: Get.find<Service>()));
  }
}
