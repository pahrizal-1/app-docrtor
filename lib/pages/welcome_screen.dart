import 'package:flutter/material.dart';
import 'package:mydoctor_app/pages/login_page.dart';
import 'package:mydoctor_app/pages/navbar_home.dart';
import 'package:mydoctor_app/pages/sigin_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavarbarRoute(),
                    ),
                  );
                },
                // ignore: prefer_const_constructors
                child: Text(
                  'Skip',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff7165D6),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(40),
              child: Image.asset('assets/doctor.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Appoint Your Doctor",
              style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7165D6),
                  wordSpacing: 2,
                  fontSize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Text(
              "Appoint Your Doctor",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 49),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: const Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },

                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 49),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Sign in From',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Google',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff7165D6),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
