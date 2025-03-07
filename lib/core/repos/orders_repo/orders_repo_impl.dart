import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/database_service.dart';

import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

import '../../../features/checkout/data/models/order_model.dart';
import '../../utils/backend_endpoint.dart';
import 'orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DataBaseService dataBaseService;

  OrdersRepoImpl({required this.dataBaseService});

  @override
  Future<Either<Failure, void>> addOrder({required OrderEntity order}) async {
    try {
      await dataBaseService.addData(
        path: BackendEndpoint.addOrder,
        data: OrderModel.fromEntity(order).toJson(),
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
