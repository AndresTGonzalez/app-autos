import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('images/login_Bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // const _PurpleBox(),
          // const _IconLogin(),
          child,
        ],
      ),
    );
  }
}

class _IconLogin extends StatelessWidget {
  const _IconLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
    );
  }

  BoxDecoration _purpleBackground() {
    return const BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Color(0xFF1a237e),
        Color(0xFF303f9f),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ));
  }
}
