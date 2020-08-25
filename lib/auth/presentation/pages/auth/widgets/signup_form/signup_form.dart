import 'package:boticario/auth/presentation/pages/auth/widgets/input_field_form.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/signup_form/bloc/signup_form_bloc.dart';
import 'package:boticario/common/domain/validator/validator.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  final Function onCreateAccount, onBack;

  const SignUpForm({
    Key key,
    this.onCreateAccount,
    this.onBack,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupFormBloc, SignupFormState>(
      listener: (context, state) => state.maybeMap(
        orElse: () => null,
        success: (s) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(Strings.accountCreated),
            ),
          );

          widget.onCreateAccount();
          return;
        },
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
            _buildNameInput(),
            SizedBox(
              height: kvpading * 4,
            ),
            _buildEmailInput(),
            SizedBox(
              height: kvpading * 4,
            ),
            _buildPasswordInput(),
            SizedBox(
              height: kvpading * 4,
            ),
            _buildSignUpButton(),
            SizedBox(
              height: kvpading,
            ),
            _buildBackText()
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordInput() {
    return InputFieldForm(
      textController: _passwordController,
      hintText: Strings.password,
      obscureText: true,
      validator: (v) => _validPassword(v),
    );
  }

  Widget _buildEmailInput() {
    return InputFieldForm(
      textController: _emailController,
      keyboardType: TextInputType.emailAddress,
      hintText: Strings.email,
      validator: (v) => _validEmail(v),
    );
  }

  Widget _buildNameInput() {
    return InputFieldForm(
      textController: _nameController,
      hintText: Strings.name,
      validator: (v) => _validName(v),
    );
  }

  InkWell _buildBackText() {
    return InkWell(
      onTap: widget.onBack,
      child: Text(
        Strings.back,
        style: TextStyle(
          color: Colors.lightBlue[100],
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Container _buildSignUpButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: .5,
        color: kPrimaryColor.withOpacity(.5),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            context.bloc<SignupFormBloc>().add(
                  SignupFormEvent.onCreateAccount(
                    User(
                      name: _nameController.text,
                      email: _emailController.text,
                    ),
                    _passwordController.text,
                  ),
                );
          }
        },
        child: Text(
          Strings.signUp.toUpperCase(),
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

  String _validEmail(String v) {
    if (v.isEmpty) {
      return Strings.emptyField;
    }
    if (!Validator.isValidEmail(v)) {
      return Strings.incorrectEmail;
    }
    return null;
  }

  String _validPassword(String v) {
    if (v.isEmpty) {
      return Strings.emptyField;
    }

    return null;
  }

  String _validName(String v) {
    if (v.isEmpty) {
      return Strings.emptyField;
    }

    return null;
  }
}
