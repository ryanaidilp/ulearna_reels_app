import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:ulearna_app/core/core.dart';

abstract class BaseUseCase<Return, Param, Repo> {
  const BaseUseCase(this.repo);

  final Repo repo;

  Future<Either<Failure, Return>> call(Param param);
}

class NoParam extends Equatable {
  const NoParam();
  @override
  List<Object> get props => [];
}
