import 'package:equatable/equatable.dart';

import 'package:ulearna_app/shared/domain/domain.dart';

class ResponseData<T> extends Equatable {
  const ResponseData({
    required this.data,
    required this.metaData,
  });
  final T data;
  final MetaData metaData;

  @override
  List<Object?> get props => [data, metaData];
}
