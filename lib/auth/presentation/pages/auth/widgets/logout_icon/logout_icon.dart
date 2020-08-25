import 'package:auto_route/auto_route.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/logout_icon/bloc/logout_bloc.dart';
import 'package:boticario/common/presentation/router.gr.dart';
import 'package:boticario/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutIcon extends StatelessWidget {
  void _pushToHomePage(BuildContext context) =>
      ExtendedNavigator.of(context).popAndPush(Routes.authPage);

  void _logout(BuildContext context) => context.bloc<LogoutBloc>().add(
        LogoutEvent.onLogout(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listener: (context, state) => state.maybeMap(
        orElse: () => null,
        success: (_) => _pushToHomePage(context),
      ),
      child: IconButton(
        icon: Icon(
          Icons.exit_to_app,
          color: kPrimaryColor,
        ),
        onPressed: () => _logout(context),
      ),
    );
  }
}
