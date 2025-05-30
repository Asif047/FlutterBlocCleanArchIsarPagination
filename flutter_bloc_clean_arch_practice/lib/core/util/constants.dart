class ApiConstants {
  static const String baseUrl = 'https://api.github.com';
  static const String searchRepositories = '/search/repositories';

  // Default parameters
  static const int defaultPerPage = 15;
  static const String defaultSearchQuery = 'flutter';
}

class DatabaseConstants {
  static const String isarSchema = 'github_repositories';
  static const int isarSchemaVersion = 1;
}

class ErrorMessages {
  static const String serverError = 'Server error occurred. Please try again later.';
  static const String cacheError = 'Cache error occurred. Please try again later.';
  static const String networkError = 'Network error occurred. Please check your connection.';
  static const String unknownError = 'Unknown error occurred. Please try again later.';
}