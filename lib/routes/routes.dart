import 'package:flutter/material.dart';

import 'package:bahliu/pages/loading_page.dart';
import 'package:bahliu/pages/login_page.dart';
import 'package:bahliu/pages/register_page.dart';
import 'package:bahliu/pages/users_page.dart';


final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),  
  'users': (_) => UsersPage(),  
  'loading': (_) => LoadingPage()  
};