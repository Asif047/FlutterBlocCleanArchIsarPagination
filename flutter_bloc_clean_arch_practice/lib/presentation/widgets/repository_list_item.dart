import 'package:flutter/material.dart';
import '../../../domain/entities/repository_entity.dart';

class RepositoryListItem extends StatelessWidget {
  final RepositoryEntity repository;

  const RepositoryListItem({
    Key? key,
    required this.repository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          // Could navigate to detail page or launch URL
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(repository.ownerAvatarUrl),
                    radius: 20,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          repository.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          repository.ownerLogin,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (repository.description.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(
                  repository.description,
                  style: const TextStyle(fontSize: 14),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildStat(Icons.star_border, repository.stargazersCount.toString()),
                  const SizedBox(width: 16),
                  _buildStat(Icons.call_split, repository.forksCount.toString()),
                  const SizedBox(width: 16),
                  _buildStat(Icons.remove_red_eye_outlined, repository.watchersCount.toString()),
                  const Spacer(),
                  if (repository.language.isNotEmpty && repository.language != 'Unknown')
                    _buildLanguageChip(repository.language),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStat(IconData icon, String count) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Text(count, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildLanguageChip(String language) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getLanguageColor(language).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _getLanguageColor(language)),
      ),
      child: Text(
        language,
        style: TextStyle(
          color: _getLanguageColor(language),
          fontSize: 12,
        ),
      ),
    );
  }

  Color _getLanguageColor(String language) {
    switch (language.toLowerCase()) {
      case 'dart':
        return Colors.blue;
      case 'javascript':
        return Colors.yellow[700]!;
      case 'typescript':
        return Colors.blue[700]!;
      case 'python':
        return Colors.green[700]!;
      case 'java':
        return Colors.orange[700]!;
      case 'kotlin':
        return Colors.purple[700]!;
      case 'swift':
        return Colors.orange[800]!;
      case 'c#':
        return Colors.green[800]!;
      case 'c++':
        return Colors.blue[800]!;
      default:
        return Colors.grey[700]!;
    }
  }
}