import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lefine_app/core/constants/app/constants.dart' as Constants;
import 'package:lefine_app/core/constants/image/image_constants.dart';
import 'package:lefine_app/product/navigator/app_router.gr.dart';
import '../../../../core/components/button/custom_button.dart';
import '../../../../core/components/button/google_button.dart';
import '../../../../core/components/text_field/custom_text_form_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Constants.bgColor,
      body: SingleChildScrollView(
        child: _stackBody(context),
      ),
    );
  }

  Stack _stackBody(BuildContext context) {
    return Stack(
      children: [
        _alignedBackground(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
          child: _bodyColumn(context),
        ),
      ],
    );
  }

  Align _alignedBackground() {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(ImageConstants.bgImage),
    );
  }

  Column _bodyColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _logoRow(),
        _loginAndRegister(context),
        const SizedBox(height: 12),
        _loremText(context),
        const SizedBox(
          height: 40,
        ),
        GoogleButton(
          onTap: () {},
        ),
        _orText(context),
        _usernameField(),
        const SizedBox(
          height: 23,
        ),
        _passwordField(),
        _forgotPasswordAndRememberMe(context),
        _signInButton(context),
        const SizedBox(
          height: 12,
        ),
        _signUpButton(context)
      ],
    );
  }

  Row _logoRow() {
    return Row(
      children: [
        _emptySizedBox(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 75.0), child: SvgPicture.asset(Assets.images.svg.icLefine)),
      ],
    );
  }

  Row _loginAndRegister(BuildContext context) {
    return Row(
      children: [
        _loginText(context),
        _emptySizedBox(),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: _registerOrRow(context),
        ),
      ],
    );
  }

  Text _loginText(BuildContext context) {
    return Text(
      Constants.Constants.login,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 32,
          color: Constants.Constants.whiteColor,
          fontFamily: FontFamily.inter),
    );
  }

  Row _registerOrRow(BuildContext context) {
    return Row(
      children: [
        _orText1(context),
        const SizedBox(
          width: 3,
        ),
        _registerText(context),
      ],
    );
  }

  Text _orText1(BuildContext context) {
    return Text(
      Constants.Constants.or,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Constants.Constants.whiteColor.withOpacity(.6), fontFamily: FontFamily.inter, fontSize: 15),
    );
  }

  InkWell _registerText(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(const RegisterRoute());
      },
      child: Text(
        Constants.Constants.register,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationThickness: 1.014,
            shadows: [const Shadow(color: Color(0xffBFA8FC), offset: Offset(0, -2))],
            decorationStyle: TextDecorationStyle.solid,
            color: Colors.transparent,
            decorationColor: const Color(0xffBFA8FC),
            fontFamily: FontFamily.inter,
            fontSize: 15),
      ),
    );
  }

  Text _loremText(BuildContext context) {
    return Text(Constants.Constants.lorem,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Constants.Constants.whiteColor.withOpacity(.3),
            fontFamily: FontFamily.inter));
  }

  Padding _orText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        Constants.Constants.or,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Constants.Constants.whiteColor.withOpacity(.3),
            fontFamily: FontFamily.inter),
      ),
    );
  }

  CustomTextFormField _usernameField() {
    return CustomTextFormField(
        prefixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.images.svg.icLefine),
        ),
        labelText: Constants.Constants.usernameOrEmail,
        textInputAction: TextInputAction.next);
  }

  CustomTextFormField _passwordField() {
    return CustomTextFormField(
      labelText: Constants.Constants.password,
      textInputAction: TextInputAction.done,
      prefixIcon: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.images.svg.icPass),
      ),
    );
  }

  Padding _forgotPasswordAndRememberMe(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        children: [
          _checkBox(),
          _rememberMe(context),
          const Spacer(),
          _forgotPasswordText(context),
        ],
      ),
    );
  }

  Checkbox _checkBox() {
    return Checkbox(
      value: true,
      checkColor: Colors.black,
      fillColor: MaterialStateProperty.all(Constants.Constants.PurpleHepatica),
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onChanged: (value) {},
    );
  }

  Text _rememberMe(BuildContext context) {
    return Text(
      Constants.Constants.rememberMe,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: Constants.Constants.whiteColor.withOpacity(.5),
          fontFamily: FontFamily.inter),
    );
  }

  InkWell _forgotPasswordText(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        Constants.Constants.forgetPass,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 1.7,
            color: Constants.Constants.PurpleHepatica,
            fontFamily: FontFamily.manrope),
      ),
    );
  }

  MyElevatedButton _signInButton(BuildContext context) {
    return MyElevatedButton(
      gradient: LinearGradient(
        colors: Constants.Constants.gradients,
      ),
      borderRadius: BorderRadius.circular(8),
      child: Text(
        Constants.Constants.signIn,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Constants.Constants.whiteColor,
            fontFamily: FontFamily.inter),
      ),
      onPressed: () {},
    );
  }

  MyElevatedButton _signUpButton(BuildContext context) {
    return MyElevatedButton(
      borderRadius: BorderRadius.circular(8),
      color: Constants.Constants.whiteColor.withOpacity(.2),
      onPressed: () {},
      child: Text(
        Constants.Constants.signUp,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Constants.Constants.whiteColor,
            fontFamily: FontFamily.inter),
      ),
    );
  }

  SizedBox _emptySizedBox() => const SizedBox(width: 10.17);
}
