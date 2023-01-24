// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:lefine_app/feature/login/view/login_view.dart';

import '../../feature/register/view/register_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    AutoRoute(page: RegisterView),
  ],
)
class $AppRouter {}
