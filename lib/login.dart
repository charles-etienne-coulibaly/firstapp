//import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool Pwdvisiblity = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FadeInUp(
        duration: const Duration(milliseconds: 1600),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/fond.jpg"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(microseconds: 1600),
                          child: Image.asset(
                            'images/proxy-image.png',
                            height: 200,
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Text(
                            "Bienvenue !",
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2,
                                color: Colors.blue.shade600),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Text("Connectez-vous à votre compte",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2,
                                  color: Colors.black87)))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      const Row(),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Text(
                            "Email",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Stack(children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              suffixIcon: Icon(
                                Icons.email,
                                color: Colors.grey.shade500,
                                size: 20,
                              ),
                              hintText: "example@gmail.com",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  color: Colors.grey)),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      const Row(),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Text(
                            "Mot de passe",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Stack(children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: password,
                          obscureText: Pwdvisiblity,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                    () => Pwdvisiblity = !Pwdvisiblity),
                                child: Pwdvisiblity
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                                /*child: Icon(
                                  Pwdvisiblity
                                      ? Icons.visibility
                                      : Icons.visibility_off_rounded,
                                  color: Colors.grey.shade500,
                                  size: 20,
                                ),*/
                              ),
                              hintText: "Entre ton mot de passe",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  color: Colors.grey)),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 200,
                              ),
                              Text(
                                "Mot de passe oublié ?",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.blue.shade800),
                              ),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  fixedSize:
                                      const WidgetStatePropertyAll(Size(200, 30)),
                                  backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue.shade800)),
                              onPressed: () {
                                if (email.text.isEmpty ||
                                    password.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Veuillez saisir le login ou le motde passe !")));
                                }
                                if (email.text == "example@gmail.com" &&
                                    password.text == "A4!g|s@8") {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Home();
                                  }));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Login ou mot de passe incorect")));
                                }
                              },
                              child: Text(
                                "Se connecter",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    fontSize: 15),
                              )))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          children: [
                            const Expanded(
                                child: Divider(
                              endIndent: 12,
                              color: Colors.black,
                            )),
                            Text(
                              "Ou",
                              style: GoogleFonts.poppins(),
                            ),
                            const Expanded(
                                child: Divider(
                              indent: 12,
                              color: Colors.black,
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset("images/google.png"),
                                  ),
                                ),
                              ),
                              /*const SizedBox(
                                width: 22,
                              ),*/
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade200),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset("images/facebook.png"),
                                ),
                              ),
                              /*const SizedBox(
                                width: 22,
                              ),*/
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset("images/apple.png"),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pas de compte ?",
                                style: GoogleFonts.poppins(
                                    letterSpacing: 1,
                                    fontSize: 13,
                                    color: Colors.blue.shade500),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "S'inscrire",
                                style: GoogleFonts.poppins(
                                    letterSpacing: 1,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.shade800),
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
