import 'package:boticario/assets.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/login_form/bloc/login_form_bloc.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/login_form/login_form.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/signup_form/bloc/signup_form_bloc.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/signup_form/signup_form.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  bool _isLogin = true;

  void _changeForm() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor.withOpacity(0.5),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.logo_boti),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(khpading),
                child: AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 400),
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 400),
                    child: _isLogin
                        ? BlocProvider(
                            create: (context) => getIt<LoginFormBloc>(),
                            child: LoginForm(
                              onTapSignUp: _changeForm,
                            ),
                          )
                        : BlocProvider(
                            create: (context) => getIt<SignupFormBloc>(),
                            child: SignUpForm(
                              onBack: _changeForm,
                              onCreateAccount: _changeForm,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
