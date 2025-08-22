import 'package:bloc_patter_course/core/errors/failure.dart';
import 'package:bloc_patter_course/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../errors/failure.dart';
import '../../../network/dio_client.dart';

Dio http = DioClient();

class PostRemoteDatasource {
  Future<List<dynamic>> getPosts() async {
    try {
      final Response<dynamic> response = await http.get("/posts");

      return response.data;
    } on DioException catch (e) {
      throw Failure(message: e.message as String);
    } catch (e) {
      throw Exception();
    }
  }
}
