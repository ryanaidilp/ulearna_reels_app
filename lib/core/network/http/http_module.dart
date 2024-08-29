import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ulearna_app/core/core.dart';


abstract class HttpModule {
  HttpModule(
    Client client, {
    required HttpSetting setting,
  }) {
    _client = client;
    _setting = setting;
  }

  @protected
  late Client _client;

  @protected
  late HttpSetting _setting;

  Map<String, String> get headers => {
        'Content-Type': _setting.contentType,
        'Accept': 'application/json',
      };

  Future<JSON?> _safeCallApi(Future<Response> call) async {
    try {
      final response = await call;

      if (response.statusCode != 200) {}

      return jsonDecode(response.body) as JSON;
    } catch (e) {
      rethrow;
    }
  }

  Future<JSON?> get({
    required String path,
    JSON? queryParams,
  }) =>
      _safeCallApi(
        _client.get(
          Uri.https(
            _setting.baseUrl,
            path,
            queryParams,
          ),
          headers: headers,
        ),
      );

  Future<JSON?> post({
    required String path,
    Object? body,
    Encoding? encoding,
  }) =>
      _safeCallApi(
        _client.post(
          Uri.https(
            _setting.baseUrl,
            path,
          ),
          body: body,
          encoding: encoding,
          headers: headers,
        ),
      );
}
