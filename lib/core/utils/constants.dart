import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/api_service.dart';
import 'package:ninja_animation/features/home/data/repo/home_repo_implementation.dart';

double getScreenHeight(context){
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(context){
  return MediaQuery.of(context).size.width;
}

HomeRepoImplementation getHomeRepoImpl(){
  return HomeRepoImplementation(
    apiService: ApiService(),
  ) ;
}