import 'package:equatable/equatable.dart';

class RepositoryEntity extends Equatable {
  final int id;
  final String name;
  final String fullName;
  final String description;
  final String htmlUrl;
  final int stargazersCount;
  final int forksCount;
  final int watchersCount;
  final String language;
  final String ownerAvatarUrl;
  final String ownerLogin;

  const RepositoryEntity({
    required this.id,
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
  });

  @override
  List<Object?> get props => [
    id,
    name,
    fullName,
    description,
    htmlUrl,
    stargazersCount,
    forksCount,
    watchersCount,
    language,
    ownerAvatarUrl,
    ownerLogin,
  ];
}