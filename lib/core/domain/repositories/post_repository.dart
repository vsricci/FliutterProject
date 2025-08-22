import 'package:bloc_patter_course/core/errors/failure.dart';
import 'package:bloc_patter_course/features/post/domain/entities/post_entity.dart';
import 'package:fpdart/fpdart.dart';

import '../../errors/failure.dart';
import '../entities/post_entity.dart';

abstract interface class PostRepository {
  Future<Either<Failure, List<PostEntity>>> getPosts();
  Future createPost({required String title, required String body});
}
