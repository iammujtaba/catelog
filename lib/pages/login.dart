import 'package:catelog/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome ${name}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () async {
                        buttonPressed = true;
                        setState(() {});
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: buttonPressed ? 50 : 100,
                        child: buttonPressed
                            ? Icon(Icons.done)
                            : const Text("Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                )),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: buttonPressed ? Colors.green : Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                      ))

                  // ElevatedButton(
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoute.homeRoute);
                  //   },
                  //   child: const Text(
                  //     "Login",
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                ]),
              )
            ],
          ),
        ));
  }
}
