import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:lottie/lottie.dart';


class MainScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 800);

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Container(
        margin: const EdgeInsets.all(8),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ///
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 2000),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 50,
                  left: 5,
                  right: 5,
                ),
                width: size.width,
                height: size.height / 2,
                child: Lottie.asset("assets/images/medcare_wl.json", animate: true),
              ),
            ),

            ///
            const SizedBox(
              height: 15,
            ),

            /// TITLE
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 1600),
              child: const Text(
                "Keep",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),

            ///
            const SizedBox(
              height: 10,
            ),

            /// SUBTITLE
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 1000),
              child: const Text(
                "Keep various ways to contact and get in touch easily right from the app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.2,
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ),

            ///
            Expanded(child: Container()),

            /// GOOGLE BTN
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 600),
              child: Container(
                width: 500,
                height: 50,
                child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon( // <-- Icon
                      Icons.email_outlined,
                      color: Colors.grey,
                      size: 24.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,  ),label: Text("Continue with Email",style: TextStyle(color: Colors.black),)),
              )
              // SButton(
              //   size: size,
              //   borderColor: Colors.grey,
              //   color: Colors.white,
              //   img: 'assets/images/gmail.png',
              //   text: "Continue with Email",
              //   textStyle: null,
              // ),
            ),

            ///
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
              duration: duration,
              delay: const Duration(milliseconds: 200),
              child:Container(
                 width: 500,
                 height: 50,
                child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: ImageIcon(
                      AssetImage("assets/images/phone.png"),
                      color: Colors.grey,
                      size: 24,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,  ),label: Text("Continue with Phone",style: TextStyle(color: Colors.black),)),
              )
              // SButton(
              //   size: size,
              //   borderColor: Colors.grey,
              //   color:  Colors.white,
              //   img: 'assets/images/phone.png',
              //   text: "Continue with Phone",
              //   textStyle: null,
              //
              // ),
            ),

            ///
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
