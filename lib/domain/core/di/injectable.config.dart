// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:market_2_home/application/auth/signInBloc/sing_in_bloc_bloc.dart'
    as _i17;
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart' as _i25;
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart'
    as _i21;
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart'
    as _i20;
import 'package:market_2_home/application/home/supermarket/vendor/vendor_bloc.dart'
    as _i23;
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart'
    as _i24;
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart'
    as _i22;
import 'package:market_2_home/domain/auth/auth_repo.dart' as _i3;
import 'package:market_2_home/domain/cart/cart_repo.dart' as _i5;
import 'package:market_2_home/domain/cart/checkOut/checkout_repo.dart' as _i7;
import 'package:market_2_home/domain/cart/order/order_repo.dart' as _i11;
import 'package:market_2_home/domain/home/home_repo.dart' as _i9;
import 'package:market_2_home/domain/home/supermarket/vendor/vendor_repo.dart'
    as _i18;
import 'package:market_2_home/domain/home/supermarket/vendorProducts/vendor_products_repo.dart'
    as _i13;
import 'package:market_2_home/domain/profile/profile_repo.dart' as _i15;
import 'package:market_2_home/infrastucture/auth/auth_repo_impl.dart' as _i4;
import 'package:market_2_home/infrastucture/cart/cart_repo_impl.dart' as _i6;
import 'package:market_2_home/infrastucture/cart/checkout/checkout_repo_impl.dart'
    as _i8;
import 'package:market_2_home/infrastucture/cart/order/order_repo_impl.dart'
    as _i12;
import 'package:market_2_home/infrastucture/home/home_repo_impl.dart' as _i10;
import 'package:market_2_home/infrastucture/home/supermarket/vendor/vendor_repo_impl.dart'
    as _i19;
import 'package:market_2_home/infrastucture/home/supermarket/vendorProducts/vendor_Products_repo_impl.dart'
    as _i14;
import 'package:market_2_home/infrastucture/profile/profile_repo_impl.dart'
    as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepo>(() => _i4.AuthRepoImpl());
    gh.lazySingleton<_i5.CartRepo>(() => _i6.CartRepoImpl());
    gh.lazySingleton<_i7.CheckoutRepo>(() => _i8.CheckoutRepoImpl());
    gh.lazySingleton<_i9.HomeRepo>(() => _i10.HomeRepoImpl());
    gh.lazySingleton<_i11.OrderRepo>(() => _i12.CartRepoImpl());
    gh.lazySingleton<_i13.ProductRepo>(() => _i14.HomeRepoImpl());
    gh.lazySingleton<_i15.ProfileRepo>(() => _i16.HomeRepoImpl());
    gh.factory<_i17.SingInBlocBloc>(
        () => _i17.SingInBlocBloc(gh<_i3.AuthRepo>()));
    gh.lazySingleton<_i18.VendorRepo>(() => _i19.VendorRepoImpl());
    gh.factory<_i20.DashBoradBloc>(
        () => _i20.DashBoradBloc(gh<_i9.HomeRepo>()));
    gh.factory<_i21.OrderBloc>(() => _i21.OrderBloc(
          gh<_i11.OrderRepo>(),
          gh<_i7.CheckoutRepo>(),
        ));
    gh.factory<_i22.ProfileBloc>(() => _i22.ProfileBloc(
          gh<_i15.ProfileRepo>(),
          gh<_i5.CartRepo>(),
        ));
    gh.lazySingleton<_i23.VendorBloc>(
        () => _i23.VendorBloc(gh<_i18.VendorRepo>()));
    gh.lazySingleton<_i24.VendorProductsBloc>(() => _i24.VendorProductsBloc(
          gh<_i13.ProductRepo>(),
          gh<_i23.VendorBloc>(),
          gh<_i5.CartRepo>(),
        ));
    gh.factory<_i25.CartBloc>(() => _i25.CartBloc(
          gh<_i5.CartRepo>(),
          gh<_i13.ProductRepo>(),
          gh<_i24.VendorProductsBloc>(),
        ));
    return this;
  }
}
