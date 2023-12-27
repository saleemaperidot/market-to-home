import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final getit = GetIt.instance;

//this annotions comes form injectable package it refers when ever application stats first this function need to invoke
@InjectableInit()
Future<void> configureInjectable() async {
  getit.init(environment: Environment.prod);
}
