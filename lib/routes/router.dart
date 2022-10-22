import 'dart:developer';
import 'package:bloc_arch/views/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    log(arguments.toString());
    switch (settings.name) {
      case '/':
        return null;
      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorScreen(
            errorMessage:
                'Page not found with given routeName : ${settings.name}',
          ),
        );
    }
  }
}

class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  const ErrorScreen({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          errorMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
