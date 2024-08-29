import 'package:equatable/equatable.dart';

import 'package:ulearna_app/shared/domain/domain.dart';

class ApiResponse<T> extends Equatable {
  const ApiResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  final int statusCode;
  final String message;
  final ResponseData<T> data;
  @override
  List<Object> get props => [statusCode, message, data];
}
