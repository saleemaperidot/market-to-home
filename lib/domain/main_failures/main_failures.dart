import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_2_home/domain/error/error_response/erorr_response/erorr_response.dart';
part 'main_failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = ClientFailure;
  const factory MainFailure.serverFailure(ErorrResponse errorResponse) =
      ServerFailure;
}
