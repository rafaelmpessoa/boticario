import 'package:auto_route/auto_route.dart';
import 'package:boticario/assets.dart';
import 'package:boticario/auth/presentation/pages/bloc/auth_bloc.dart';
import 'package:boticario/common/presentation/router.gr.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _SplashScreenState createState() => _SplashScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
        child: this,
      );
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  static final Animatable<double> _offsetTween =
      Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: Curves.easeOut));

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = _offsetTween.animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _pushNewPage(String page, BuildContext context, {Object arguments}) {
    Future.delayed(Duration(milliseconds: 2500)).then((_) =>
        ExtendedNavigator.of(context).popAndPush(page, arguments: arguments));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.maybeMap(
        orElse: () => null,
        unauthenticated: (_) => _pushNewPage(Routes.authPage, context),
        authenticated: (s) => _pushNewPage(
          Routes.homePage,
          context,
          arguments: HomePageArguments(
            user: s.user,
          ),
        ),
      ),
      child: Material(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: kPrimaryColor,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: 0,
                right: 0,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (_, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: _animation.value,
                          child: _buildLogo(),
                        ),
                        const SizedBox(
                          height: kvpading * 8,
                        ),
                        AnimatedBuilder(
                          animation: _animation,
                          builder: (_, child) {
                            return Transform.translate(
                              offset: Offset(0, _animation.value * -40),
                              child: Opacity(
                                  opacity: _animation.value, child: child),
                            );
                          },
                          child: _buildInfo(context),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar _buildLogo() {
    return CircleAvatar(
      backgroundColor: Colors.white70,
      maxRadius: 81,
      child: CircleAvatar(
        maxRadius: 80,
        child: ClipOval(
          child: Image.asset(
            Assets.logo,
          ),
        ),
      ),
    );
  }

  Column _buildInfo(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.myName,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.white70),
        ),
        Text(
          Strings.myEmail,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Colors.white70),
        ),
      ],
    );
  }
}
