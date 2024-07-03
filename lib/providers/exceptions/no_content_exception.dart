class NoContentException implements Exception {
  final String message;

  NoContentException(this.message);

  @override
  String toString() {
    return 'NoContentException: $message';
  }
}
