import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ninja_animation/core/utils/api_service.dart';
import 'package:ninja_animation/core/utils/bloc_observ.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/data/repo/home_repo_implementation.dart';
import 'package:ninja_animation/features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:ninja_animation/features/search/presentation/views/search_view.dart';
import 'package:ninja_animation/features/splash_feature/presentaion/views/Splash_view.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized() ;
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            homeRepo: HomeRepoImplementation(apiService: ApiService()),
          )..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        themeMode: ThemeMode.dark,
        home: const SplashView(),
      ),
    );
  }
}
