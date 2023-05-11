import 'package:coursenetic/src/features/auth/presentation/pages/login.dart';
import 'package:coursenetic/src/features/homepages/presentation/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/register_textfield.dart';
// import 'package:flutter/cupertino.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(54.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage("assets/images/Logo.png"),
                  width: 76.64,
                  height: 53.9,
                ),
                const SizedBox(
                  height: 8.52,
                ),
                const Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff00007e)),
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTextFormField(
                  prefixIcon: Icon(Icons.person_2_outlined,
                      color: const Color(0xff00007e).withOpacity(0.5)),
                  hintText: 'Name',
                ),
                CustomTextFormField(
                  prefixIcon: Icon(Icons.email_outlined,
                      color: const Color(0xff00007e).withOpacity(0.5)),
                  hintText: 'Email',
                ),
                CustomTextFormField(
                  obscureText: isPasswordVisible,
                  prefixIcon: Icon(Icons.lock_outline_sharp,
                      color: const Color(0xff00007e).withOpacity(0.5)),
                  suffixIcon: GestureDetector(
                      onTap: () => setState(() {
                            isPasswordVisible == !isPasswordVisible;
                          }),
                      child: isPasswordVisible
                          ? const Icon(Icons.visibility_off_outlined,
                              color: Color(0xff7B7BBA))
                          : const Icon(Icons.visibility_outlined,
                              color: Color(0xff7B7BBA))),
                  hintText: 'Password',
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: const Color(0xff00007e).withOpacity(0.5),
                    ),
                    Text(
                      "Remember me",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: const Color(0xff00007e).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 67,
                ),
                SizedBox(
                  height: 52,
                  width: 292,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff00007e))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                              CupertinoPageRoute(
                                  builder: (ctx) => const homePage()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 31,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Sign Up With",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff00007e),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.facebook_outlined,
                      size: 50,
                    ),
                    Icon(
                      Icons.add_link,
                      size: 50,
                    ),
                    Icon(
                      Icons.linked_camera_outlined,
                      size: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: const Color(0xff00007e).withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              CupertinoPageRoute(
                                  builder: (ctx) => const Login()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff00007e),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 31,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "By creating an account, you accept Coursenetic’s\nTerms of Service and Privacy Policy",
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
