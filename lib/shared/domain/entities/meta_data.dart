import 'package:equatable/equatable.dart';

class MetaData extends Equatable {
  const MetaData({
    required this.total,
    required this.page,
    required this.limit,
  });
  final int total;
  final int page;
  final int limit;
  @override
  List<Object> get props => [total, page, limit];
}
