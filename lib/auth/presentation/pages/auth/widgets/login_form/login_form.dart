import 'package:auto_route/auto_route.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/input_field_form.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/login_form/bloc/login_form_bloc.dart';
import 'package:boticario/common/domain/validator/validator.dart';
import 'package:boticario/common/presentation/router.gr.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  final Function onTapSignUp;

  const LoginForm({
    Key key,
    @required this.onTapSignUp,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _validForm() => WidgetsBinding.instance
      .addPostFrameCallback((_) => _formKey.currentState.validate());

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormBloc, LoginFormState>(
      listener: (context, state) => state.maybeMap(
        orElse: () => null,
        success: (s) => _pushToHomePage(s.user),
        error: (_) => _validForm(),
      ),
      child: Card(
        elevation: 10,
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(kvpading * 2),
          child: _buildForm(),
        ),
      ),
    );
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildEmailInput(),
            SizedBox(
              height: kvpading * 4,
            ),
            _buildPasswordInput(),
            SizedBox(
              height: kvpading * 4,
            ),
            _buildSignInButton(),
            SizedBox(
              height: kvpading,
            ),
            _buildSingUpText()
          ],
        ),
      ),
    );
  }

  BlocBuilder<LoginFormBloc, LoginFormState> _buildPasswordInput() {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return InputFieldForm(
          onChange: (_) =>
              context.bloc<LoginFormBloc>().add(LoginFormEvent.onChangeInput()),
          textController: _passwordController,
          hintText: Strings.password,
          obscureText: true,
          validator: (v) => _validPassword(
            v,
            failure: state.maybeMap(
              orElse: () => null,
              error: (er) => er.failures.maybeMap(
                orElse: () => null,
                invalidPassword: (_) => Strings.invalidPassword,
              ),
            ),
          ),
        );
      },
    );
  }

  BlocBuilder<LoginFormBloc, LoginFormState> _buildEmailInput() {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (_, state) {
        return InputFieldForm(
          onChange: (_) =>
              context.bloc<LoginFormBloc>().add(LoginFormEvent.onChangeInput()),
          textController: _emailController,
          keyboardType: TextInputType.emailAddress,
          hintText: Strings.email,
          validator: (v) => _validEmail(
            v,
            failure: state.maybeMap(
              orElse: () => null,
              error: (er) => er.failures.maybeMap(
                orElse: () => null,
                emailNotFound: (_) => Strings.emailNotFound,
              ),
            ),
          ),
        );
      },
    );
  }

  InkWell _buildSingUpText() {
    return InkWell(
      onTap: widget.onTapSignUp,
      child: Column(
        children: [
          Text(Strings.notHaveAccount),
          Text(
            Strings.signUp,
            style: TextStyle(
              color: Colors.lightBlue[100],
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildSignInButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: .5,
        color: kPrimaryColor.withOpacity(.5),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            context.bloc<LoginFormBloc>().add(
                  LoginFormEvent.onSubmit(
                    email: _emailController.text,
                    password: _passwordController.text,
                  ),
                );
          }
        },
        child: Text(
          Strings.signIn.toUpperCase(),
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

  String _validEmail(String v, {String failure}) {
    if (failure != null && failure.isNotEmpty) {
      return failure;
    }
    if (v.isEmpty) {
      return Strings.emptyField;
    }
    if (!Validator.isValidEmail(v)) {
      return Strings.incorrectEmail;
    }
    return null;
  }

  String _validPassword(String v, {String failure}) {
    if (failure != null && failure.isNotEmpty) {
      return failure;
    }

    if (v.isEmpty) {
      return Strings.emptyField;
    }

    return null;
  }

  void _pushToHomePage(User user) => ExtendedNavigator.of(context)
      .popAndPush(Routes.homePage, arguments: HomePageArguments(user: user));
}
