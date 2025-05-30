import 'package:isar/isar.dart';
import '../../domain/entities/repository_entity.dart';

part 'repository_model.g.dart';

@collection
class RepositoryModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late int repoId;

  late String name;
  late String fullName;
  late String description;
  late String htmlUrl;
  late int stargazersCount;
  late int forksCount;
  late int watchersCount;
  late String language;
  late String ownerAvatarUrl;
  late String ownerLogin;
  late int page;
  late String query;
  late DateTime cachedAt;

  RepositoryModel({
    required this.repoId,
    required this.name,
    required this.fullName,
    required this.description,
    required this.htmlUrl,
    required this.stargazersCount,
    required this.forksCount,
    required this.watchersCount,
    required this.language,
    required this.ownerAvatarUrl,
    required this.ownerLogin,
    required this.page,
    required this.query,
    required this.cachedAt,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json, {required int page, required String query}) {
    final owner = json['owner'] ?? {};

    return RepositoryModel(
      repoId: json['id'] ?? 0,
      name: json['name'] ?? '',
      fullName: json['full_name'] ?? '',
      description: json['description'] ?? '',
      htmlUrl: json['html_url'] ?? '',
      stargazersCount: json['stargazers_count'] ?? 0,
      forksCount: json['forks_count'] ?? 0,
      watchersCount: json['watchers_count'] ?? 0,
      language: json['language'] ?? 'Unknown',
      ownerAvatarUrl: owner['avatar_url'] ?? '',
      ownerLogin: owner['login'] ?? '',
      page: page,
      query: query,
      cachedAt: DateTime.now(),
    );
  }

  RepositoryEntity toEntity() {
    return RepositoryEntity(
      id: repoId,
      name: name,
      fullName: fullName,
      description: description,
      htmlUrl: htmlUrl,
      stargazersCount: stargazersCount,
      forksCount: forksCount,
      watchersCount: watchersCount,
      language: language,
      ownerAvatarUrl: ownerAvatarUrl,
      ownerLogin: ownerLogin,
    );
  }

  factory RepositoryModel.fromEntity(RepositoryEntity entity, {required int page, required String query}) {
    return RepositoryModel(
      repoId: entity.id,
      name: entity.name,
      fullName: entity.fullName,
      description: entity.description,
      htmlUrl: entity.htmlUrl,
      stargazersCount: entity.stargazersCount,
      forksCount: entity.forksCount,
      watchersCount: entity.watchersCount,
      language: entity.language,
      ownerAvatarUrl: entity.ownerAvatarUrl,
      ownerLogin: entity.ownerLogin,
      page: page,
      query: query,
      cachedAt: DateTime.now(),
    );
  }
}