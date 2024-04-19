import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "ToDo - App",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 124, 104, 226),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: Form(
            key: _formkey,
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i2.wp.com/wallpapercave.com/wp/dLB5ai0.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 14.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromARGB(255, 250, 248, 248)
                          .withOpacity(0.8),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://png.pngtree.com/png-clipart/20191121/original/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_5089976.jpg',
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: "USERNAME",
                            hintText: "Enter your username",
                            prefixIcon: const Icon(Icons.verified_user_rounded),
                            fillColor: const Color.fromARGB(162, 248, 246, 246),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            contentPadding: const EdgeInsets.all(16.0),
                            alignLabelWithHint: true,
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                          textAlign: TextAlign.left,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter valid username';
                            }
                            return null;
                          },
                        ),
                        // const SizedBox(height: 10),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "PASSWORD",
                            prefixIcon: const Icon(Icons.lock),
                            fillColor: const Color.fromARGB(162, 248, 246, 246),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            contentPadding: const EdgeInsets.all(16.0),
                            alignLabelWithHint: true,
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                          textAlign: TextAlign.left,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter valid Password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.pop(
                                  context); // Navigate back to login only if form is validated
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Account Created Successfuly",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 20),
                                  ),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor:
                                const Color.fromRGBO(89, 57, 241, 1),
                            minimumSize: const Size(200, 50),
                            maximumSize: const Size(400, 70),
                          ),
                          child: const Text(
                            "SIGNUP",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ])));
  }
}
