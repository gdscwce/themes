import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:themes/reusables.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


TextEditingController kEmail = TextEditingController();
TextEditingController kPassword = TextEditingController();
bool isVisible =false;

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 16,
                color: Colors.black.withOpacity(0.2),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 40.0,
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.2),
                      )),
                  child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          kTextFormField(
                          lable: 'Email',
                          kController: kEmail,
                          obscure: false,
                          icon: Icon(Icons.person),
                          validator: (val) {}),
                      const SizedBox(
                        height: 30,
                      ),
                      kTextFormField(
                          lable: 'password',
                          kController: kPassword,
                          obscure: isVisible,
                          suffixIcon: IconButton(
                            icon: isVisible
                                ? const Icon(
                              Icons.remove_red_eye_outlined,
                              size: 25,
                              semanticLabel: 'show password',
                            )
                                : const Icon(Icons.visibility_off,
                                size: 25,
                                semanticLabel: 'Hide password'),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                          ),
                          icon: const Icon(Icons.person),
                      validator: (val) {}),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    ),
    );
  }
}
