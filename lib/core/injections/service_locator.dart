import 'package:bloc_patter_course/core/injections/post/post_service_locator.dart';
import 'package:get_it/get_it.dart';

final GetIt slInstance = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {
    final authServiceLocator = PostServiceLocator(slInstance);
    authServiceLocator.init();
  }
}
