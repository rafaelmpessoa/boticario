// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'common/data/database.dart';
import 'auth/presentation/pages/bloc/auth_bloc.dart';
import 'auth/data/data_source/auth_local_data_source.dart';
import 'auth/data/data_source/auth_remote_data_source.dart';
import 'auth/domain/repository/auth_repository.dart';
import 'auth/data/repository/auth_repository_impl.dart';
import 'user/domain/usecases/create_fake_user_post_use_case_impl.dart';
import 'user/domain/usecases/create_fake_user_post_use_case.dart';
import 'user/domain/usecases/create_user_post_use_case.dart';
import 'user/domain/usecases/create_user_post_use_case_impl.dart';
import 'user/domain/usecases/create_user_use_case.dart';
import 'user/domain/usecases/create_user_use_case_impl.dart';
import 'user/domain/usecases/get_current_user_use_case.dart';
import 'user/domain/usecases/get_current_user_use_case_impl.dart';
import 'news/domain/usecases/get_news_use_case.dart';
import 'news/domain/usecases/get_news_use_case_impl.dart';
import 'user/domain/usecases/get_posts_use_case.dart';
import 'user/domain/usecases/get_posts_use_case_impl.dart';
import 'auth/domain/usecases/get_token_use_case.dart';
import 'auth/domain/usecases/get_token_use_case_impl.dart';
import 'auth/domain/usecases/is_authenticated_use_case.dart';
import 'auth/domain/usecases/is_authenticated_use_case_impl.dart';
import 'auth/presentation/pages/auth/widgets/login_form/bloc/login_form_bloc.dart';
import 'auth/domain/usecases/login_use_case.dart';
import 'auth/domain/usecases/login_use_case_impl.dart';
import 'auth/presentation/pages/auth/widgets/logout_icon/bloc/logout_bloc.dart';
import 'auth/domain/usecases/logout_use_case.dart';
import 'auth/domain/usecases/logout_use_case_impl.dart';
import 'user/presentation/widgets/new_post/bloc/new_post_bloc.dart';
import 'news/presentation/widgets/news_list/bloc/news_list_bloc.dart';
import 'news/data/data_source/news_remote_data_source.dart';
import 'news/domain/repository/news_repository.dart';
import 'news/data/repository/news_repository_impl.dart';
import 'user/domain/usecases/remove_user_post_use_case.dart';
import 'user/domain/usecases/remove_user_post_use_case_impl.dart';
import 'auth/presentation/pages/auth/widgets/signup_form/bloc/signup_form_bloc.dart';
import 'user/domain/usecases/update_user_post_use_case.dart';
import 'user/domain/usecases/update_user_post_use_case_impl.dart';
import 'user/data/data_source/user_local_data_source.dart';
import 'user/presentation/widgets/user_post_item/bloc/user_post_item_bloc.dart';
import 'user/presentation/widgets/user_post_list/bloc/user_post_list_bloc.dart';
import 'user/data/data_source/user_remote_data_source.dart';
import 'user/domain/repository/user_repository.dart';
import 'user/data/repository/user_repository_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthLocalDataSource>(() => AuthLocalDataSourceImpl());
  gh.lazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
  gh.lazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      get<AuthLocalDataSource>(), get<AuthRemoteDataSource>()));
  gh.lazySingleton<CreateFakeUserPostUseCase>(
      () => CreateFakeUserPostCaseImpl());
  gh.lazySingleton<GetTokenUseCase>(
      () => GetTokenUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<IsAuthenticatedUseCase>(
      () => IsAuthenticatedUseCaseImpl(get<GetTokenUseCase>()));
  gh.lazySingleton<LogoutUseCase>(
      () => LogoutUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<NewsRemoteDataSource>(() => NewsRemoteDataSourceImpl());
  gh.lazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(get<NewsRemoteDataSource>()));
  gh.lazySingleton<UserLocalDataSource>(() => UserLocalDataSourceImpl());
  gh.lazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
  gh.lazySingleton<UserRepository>(() => UserRepositoryImpl(
      get<UserRemoteDataSource>(), get<UserLocalDataSource>()));
  gh.lazySingleton<CreateUserPostUseCase>(
      () => CreateUserPostUseCaseImpl(get<UserRepository>()));
  gh.lazySingleton<CreateUserUseCase>(
      () => CreateUserUseCaseImpl(get<UserRepository>()));
  gh.lazySingleton<GetCurrentUserUseCase>(
      () => GetCurrentUserUseCaseImpl(get<UserRepository>()));
  gh.lazySingleton<GetNewsUseCase>(
      () => GetNewsUseCaseImpl(get<NewsRepository>()));
  gh.lazySingleton<GetPostsUseCase>(
      () => GetPostsUseCaseImpl(get<UserRepository>()));
  gh.lazySingleton<LoginUseCase>(
      () => LoginUseCaseImpl(get<AuthRepository>(), get<UserRepository>()));
  gh.factory<LogoutBloc>(() => LogoutBloc(get<LogoutUseCase>()));
  gh.factory<NewsListBloc>(() => NewsListBloc(get<GetNewsUseCase>()));
  gh.lazySingleton<RemoveUserPostUseCase>(
      () => RemoveUserPostUseCaseImpl(get<UserRepository>()));
  gh.factory<SignupFormBloc>(() => SignupFormBloc(get<CreateUserUseCase>()));
  gh.lazySingleton<UpdateUserPostUseCase>(
      () => UpdateUserPostUseCaseImpl(get<UserRepository>()));
  gh.factory<UserPostItemBloc>(() => UserPostItemBloc(
      get<UpdateUserPostUseCase>(), get<RemoveUserPostUseCase>()));
  gh.factory<UserPostListBloc>(() => UserPostListBloc(get<GetPostsUseCase>()));
  gh.factory<AuthBloc>(() =>
      AuthBloc(get<IsAuthenticatedUseCase>(), get<GetCurrentUserUseCase>()));
  gh.factory<LoginFormBloc>(() => LoginFormBloc(get<LoginUseCase>()));
  gh.factory<NewPostBloc>(() =>
      NewPostBloc(get<CreateUserPostUseCase>(), get<UpdateUserPostUseCase>()));

  // Eager singletons must be registered in the right order
  gh.singleton<AppDatabase>(AppDatabase());
  return get;
}
