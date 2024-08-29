class HttpSetting {
  const HttpSetting({
    required this.baseUrl,
    required this.contentType,
    this.timeout = const HttpTimeout(),
  });

  final String baseUrl;
  final String contentType;
  final HttpTimeout timeout;
}

class HttpTimeout {
  const HttpTimeout({
    this.connectionTimeout = 30000,
    this.sendTimeout = 20000,
    this.receiveTimeout = 20000,
  });
  final int connectionTimeout;
  final int sendTimeout;
  final int receiveTimeout;
}
