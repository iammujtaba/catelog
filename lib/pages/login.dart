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
  final _formKey = GlobalKey<FormState>();

  validateLoginForm(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonPressed = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        buttonPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
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
              Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 6) {
                          return "password length should be atleast 6.";
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: buttonPressed ? Colors.green : Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                          onTap: () => validateLoginForm(context),
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
                          )),
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
