import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import '../../../features/checkout/data/models/order_input_model.dart';
import '../../utils/backend_endpoint.dart';
import 'orders_repo.dart';

// class OrdersRepoImpl implements OrdersRepo {
//   final DataBaseService dataBaseService;
//
//   OrdersRepoImpl(this.dataBaseService);
//
//   @override
//   Future<Either<Failure, void>> addOrder(
//       {required OrderInputEntity order}) async {
//     try {
//       await dataBaseService.addData(
//         path: BackendEndpoint.addOrder,
//         data: OrderInputModel.fromEntity(order).toJson(),
//       );
//       return right(null);
//     } catch (e) {
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }

class OrdersRepoImpl implements OrdersRepo {
  final DataBaseService dataBaseService;

  OrdersRepoImpl(this.dataBaseService);

  @override
  Future<Either<Failure, void>> addOrder(
      {required OrderInputEntity order}) async {
    try {
      var orderModel = OrderModel.fromEntity(order);
      await dataBaseService.addData(
        path: BackendEndpoint.addOrder,
        // documentId: orderModel.uId, //TODO : documentId send only one edit document
        data: orderModel.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
