import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Application/Download/download_bloc.dart';
import 'package:netflix/infrastructure/FirebaseServices/Authservices.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'LoginScreen.dart';

ValueNotifier<bool> _Isloading = ValueNotifier(false);

class SignUpscreen extends StatelessWidget {
  SignUpscreen({super.key});

  final _emaicontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _Usernamecontroller = TextEditingController();

  final Signup = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadBloc>(context)
        .add(DownloadEvent.getDownloadImage());
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
          return ValueListenableBuilder(
            valueListenable: _Isloading,
            builder: (BuildContext context, bool value, _) {
              return Scaffold(
                body: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "${APIimageURL}${state.downloads[0].posterPath}"),
                              fit: BoxFit.cover)),
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
                            Colors.black.withOpacity(0.9),
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
                                key: Signup,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Customtextfield(
                                      iconData: Icons.person,
                                      controller: _Usernamecontroller,
                                      hintText: "Username",
                                      secure: false,
                                    ),
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
                                  if (Signup.currentState!.validate()) {
                                    _Isloading.value = true;
                                    final String res = await Authservice()
                                        .SignUPuser(
                                            _emaicontroller.text.trim(),
                                            _passwordcontroller.text.trim(),
                                            _Usernamecontroller.text.trim(),
                                            context);
                                    _Isloading.value = false;
                                    if (res == "Done") {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  "Created Account successfully login with the Same Credentials")));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(res
                                                  .toString()
                                                  .replaceRange(0, 36, ''))));
                                    }
                                  }
                                },
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 13,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                            "Already Have an account?",
                            style: GoogleFonts.actor(
                                fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Sign IN",
                                style: GoogleFonts.actor(
                                    fontSize: 15, color: Colors.red),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
