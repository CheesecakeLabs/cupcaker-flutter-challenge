import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:CupcakerChallenge/interfaces/http.dart';

GetIt getIt = GetIt.instance;

void startGetItModules() {
  _localModules();
  _daoModules();
  _serviceModules();
  _repositoryModules();
  _blocModules();
}

void _localModules() {
  getIt.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
}

void _daoModules() {
  //TODO
}

void _serviceModules() {
  //TODO
}

void _repositoryModules() {
  //TODO
}

void _blocModules() {
  //TODO
}
