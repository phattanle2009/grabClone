import 'package:flutter/material.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/route.dart';
import 'package:grab_clone/extension/build_context_extension.dart';
import 'package:grab_clone/feature/splash/splash_page_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _bloc = SplashPageBloc();

  @override
  void initState() {
    _bloc.result.listen((event) {
      if (event == null) {
        return;
      } else {
        context.pushReplaceNamed(AppRoute.dashboardRoute);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget _buildBody() {
    return Container(
      child: Image.asset(
        AppImages.splash,
        fit: BoxFit.fill,
        height: double.infinity,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}
