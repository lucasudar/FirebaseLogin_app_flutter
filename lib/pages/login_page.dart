import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_firebase_flutter/constants.dart';
import 'package:login_page_firebase_flutter/pages/components/action_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo/firebase-logo.svg',
                    height: 100),
                Text(
                  'Login Page',
                  style: GoogleFonts.mako(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                const Text(
                  'Nice to see you again!',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                          horizontal: kDefaultPadding,
                        ),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.mako(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                          horizontal: kDefaultPadding,
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.mako(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                ActionBtn(text: 'Log in', press: () {}),
                const SizedBox(height: kDefaultPadding / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Not a member? '),
                    Text(
                      'Register now',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

