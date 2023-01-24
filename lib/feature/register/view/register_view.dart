import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lefine_app/core/constants/constants.dart';

import '../../../core/components/button/custom_button.dart';
import '../../../product/navigator/app_router.gr.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/bg.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/svg/ic_logo.svg'),
                      _emptySizedBox(),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 75.0),
                          child: SvgPicture.asset('assets/images/svg/ic_lefine.svg')),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Register',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: Constants.fontFamily),
                      ),
                      _emptySizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'or',
                              style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white.withOpacity(.6), fontFamily: Constants.fontFamily, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            InkWell(
                              onTap: () {
                                context.router.navigate(const LoginRoute());
                              },
                              child: Text(
                                'Login',
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1.014,
                                    shadows: [const Shadow(color: Color(0xffBFA8FC), offset: Offset(0, -2))],
                                    decorationStyle: TextDecorationStyle.solid,
                                    color: Colors.transparent,
                                    decorationColor: const Color(0xffBFA8FC),
                                    fontFamily: Constants.fontFamily,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text('How do i get started blazein dolor at?',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white.withOpacity(.3),
                          fontFamily: Constants.fontFamily)),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(.2), borderRadius: BorderRadius.circular(8)),
                    height: 48,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/svg/ic_google.svg'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Sign in with Google',
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: Constants.fontFamily),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Or',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white.withOpacity(.3),
                          fontFamily: Constants.fontFamily),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/svg/ic_user.svg'),
                      ),
                      labelText: "Username or Email",
                      labelStyle: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white.withOpacity(.5),
                          fontFamily: Constants.fontFamily1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white, width: 1),
                      ),
                      fillColor: Colors.white.withOpacity(.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/svg/ic_pass.svg'),
                      ),
                      labelStyle: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white.withOpacity(.5),
                          fontFamily: Constants.fontFamily1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white, width: 1),
                      ),
                      fillColor: Colors.white.withOpacity(.1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/svg/ic_pass.svg'),
                      ),
                      labelStyle: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white.withOpacity(.5),
                          fontFamily: Constants.fontFamily1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white, width: 1),
                      ),
                      fillColor: Colors.white.withOpacity(.1),
                      filled: true,
                    ),
                  ),
                  MyElevatedButton(
                    gradient: const LinearGradient(colors: [
                      Color(0xff7F56D9),
                      Color(0xff683CC9),
                    ]),
                    borderRadius: BorderRadius.circular(8),
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: Constants.fontFamily),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  MyElevatedButton(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(.2),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: Constants.fontFamily),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _emptySizedBox() => const SizedBox(width: 10.17);
}
