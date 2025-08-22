import 'package:fpdart/fpdart.dart';

import '../../errors/failure.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class GetPostUsecase {
  final PostRepository repository;

  GetPostUsecase({required this.repository});
  Future<Either<Failure, List<PostEntity>>> call() async {
    return await repository.getPosts();
  }
}
