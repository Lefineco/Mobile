import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lefine_app/core/constants/app/constants.dart' as Constants;

import '../../../../core/components/button/custom_button.dart';
import '../../../../core/components/button/google_button.dart';
import '../../../../core/components/text_field/custom_text_form_field.dart';
import '../../../../core/constants/image/image_constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../product/navigator/app_router.gr.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.Constants.bgColor,
      body: SingleChildScrollView(
        child: _bodyStack(context),
      ),
    );
  }

  Stack _bodyStack(BuildContext context) {
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
      child: Image.asset(
        ImageConstants.bgImage,
      ),
    );
  }

  Column _bodyColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _lefineLogo(),
        _registerBuild(context),
        const SizedBox(height: 12),
        _loremText(context),
        const SizedBox(
          height: 40,
        ),
        GoogleButton(
          onTap: () {},
        ),
        _orText(context),
        _emailField(),
        const SizedBox(
          height: 23,
        ),
        _passwordField(),
        const SizedBox(
          height: 23,
        ),
        _confirmPassField(),
        const SizedBox(
          height: 23,
        ),
        _signInButton(context),
        const SizedBox(
          height: 12,
        ),
        _signUpButton(context)
      ],
    );
  }

  Row _lefineLogo() {
    return Row(
      children: [
        SvgPicture.asset(Assets.images.svg.icLogo),
        _emptySizedBox(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 75.0), child: SvgPicture.asset(Assets.images.svg.icLefine)),
      ],
    );
  }

  Row _registerBuild(BuildContext context) {
    return Row(
      children: [
        _registerText(context),
        _emptySizedBox(),
        _orTextAndLogin(context),
      ],
    );
  }

  Text _registerText(BuildContext context) {
    return Text(
      Constants.Constants.register,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 32,
          color: Constants.Constants.whiteColor,
          fontFamily: FontFamily.inter),
    );
  }

  Padding _orTextAndLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          _orText1(context),
          const SizedBox(
            width: 3,
          ),
          _GestureLoginText(context),
        ],
      ),
    );
  }

  Text _orText1(BuildContext context) {
    return Text(
      Constants.Constants.or,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          color: Constants.Constants.whiteColor.withOpacity(.6), fontFamily: FontFamily.manrope, fontSize: 15),
    );
  }

  InkWell _GestureLoginText(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(const LoginRoute());
      },
      child: Text(
        Constants.Constants.login,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w500,
            decorationThickness: 1.014,
            shadows: [const Shadow(color: Color(0xffBFA8FC), offset: Offset(0, -2))],
            decorationStyle: TextDecorationStyle.solid,
            color: Colors.transparent,
            decorationColor: const Color(0xffBFA8FC),
            fontFamily: FontFamily.manrope,
            fontSize: 15),
      ),
    );
  }

  Text _loremText(BuildContext context) {
    return Text(Constants.Constants.lorem,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.white.withOpacity(.3),
            fontFamily: FontFamily.manrope));
  }

  Padding _orText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        Constants.Constants.or,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.white.withOpacity(.3),
            fontFamily: FontFamily.manrope),
      ),
    );
  }

  CustomTextFormField _emailField() {
    return CustomTextFormField(
        prefixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.images.svg.icUser),
        ),
        labelText: Constants.Constants.usernameOrEmail,
        textInputAction: TextInputAction.next);
  }

  CustomTextFormField _passwordField() {
    return CustomTextFormField(
      textInputAction: TextInputAction.next,
      labelText: Constants.Constants.password,
      suffixIcon: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.images.svg.icEye),
      ),
      prefixIcon: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.images.svg.icPass),
      ),
    );
  }

  CustomTextFormField _confirmPassField() {
    return CustomTextFormField(
      textInputAction: TextInputAction.done,
      labelText: Constants.Constants.confirmPass,
      suffixIcon: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.images.svg.icEye),
      ),
      prefixIcon: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.images.svg.icPass),
      ),
    );
  }

  MyElevatedButton _signInButton(BuildContext context) {
    return MyElevatedButton(
      gradient: LinearGradient(colors: Constants.Constants.gradients),
      borderRadius: BorderRadius.circular(8),
      child: Text(
        Constants.Constants.signIn,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white, fontFamily: FontFamily.manrope),
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
            fontFamily: FontFamily.manrope),
      ),
    );
  }

  SizedBox _emptySizedBox() => const SizedBox(width: 10.17);
}
