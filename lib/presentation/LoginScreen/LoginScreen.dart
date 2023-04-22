import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/infrastructure/FirebaseServices/Authservices.dart';
import 'package:netflix/presentation/LoginScreen/SignUp.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

import '../../Application/Download/download_bloc.dart';
import '../../core/Colors/Strings.dart';

ValueNotifier<bool> _Isloading = ValueNotifier(false);

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _emaicontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  final Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadBloc>(context)
        .add(DownloadEvent.getDownloadImage());
    return ValueListenableBuilder(
      valueListenable: _Isloading,
      builder: (context, value, child) {
        return BlocBuilder<DownloadBloc, DownloadState>(
            builder: (context, state) {
          if (state.isloading == true) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else if (state.downloads.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "${APIimageURL}${state.downloads[1].posterPath}",
                            ),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black,
                          Colors.black,
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ])),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/net.png"),
                                    fit: BoxFit.fitWidth)),
                          ),
                          Container(
                            child: Form(
                              key: Formkey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Customtextfield(
                                    iconData: Icons.email,
                                    controller: _emaicontroller,
                                    hintText: "Email",
                                    secure: false,
                                  ),
                                  Customtextfield(
                                    iconData: Icons.key,
                                    controller: _passwordcontroller,
                                    hintText: "Password",
                                    secure: true,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () async {
                                if (Formkey.currentState!.validate()) {
                                  _Isloading.value = true;
                                  final String res = await Authservice()
                                      .LoginUser(_emaicontroller.text.trim(),
                                          _passwordcontroller.text.trim());
                                  _Isloading.value = false;
                                  if (res == "Done") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text("Access Granted")));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(res.toString())));
                                  }
                                }
                              },
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 13,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Sign IN",
                                      style: GoogleFonts.actor(fontSize: 20),
                                    ),
                                  )),
                            ),
                          ),
                          value == true
                              ? Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: LinearProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Container()
                        ],
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an account?",
                          style: GoogleFonts.actor(
                              fontSize: 16, color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignUpscreen()));
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.actor(
                                  fontSize: 15, color: Colors.red),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        });
      },
    );
  }
}

class Customtextfield extends StatelessWidget {
  final String hintText;
  final bool secure;
  final IconData iconData;
  final TextEditingController controller;

  const Customtextfield(
      {super.key,
      required this.hintText,
      required this.secure,
      required this.controller,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          validator: (val) {
            if (val == null || val.isEmpty) {
              return "Provide ${hintText}";
            }
            return null;
          },
          controller: controller,
          obscureText: secure,
          decoration: InputDecoration(
              prefixIcon: Icon(iconData),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.5))),
        ),
      ),
    );
  }
}
