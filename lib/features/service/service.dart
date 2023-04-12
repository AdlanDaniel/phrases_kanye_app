// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:phrases_kanye_west/features/repository/repository.dart';

class Service {
  Repository repository;
  Service({
    required this.repository,
  });

  Future<String> getPhraseKanyeWest() async {
    try {
      return await repository.getPhraseKanyeWest();
    } on RepositoryException {
      throw ServiceException();
    }
  }
}

class ServiceException implements Exception {}
