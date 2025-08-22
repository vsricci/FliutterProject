import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

final options = CacheOptions(
  store: MemCacheStore(),
  hitCacheOnNetworkFailure: true,
  maxStale: const Duration(days: 7),
  priority: CachePriority.normal,
);

class DioClient {
  static Dio instance() {
    final dio = Dio(
      BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"),
    );
    return dio;
  }
}
