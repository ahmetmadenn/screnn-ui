import 'package:flutter/material.dart';
import 'package:login_screen_ui_two/register_page.dart';
import 'package:login_screen_ui_two/reset_password.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 600,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text("LOGIN",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700, //kalınlık
                                fontSize: 50,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 20,
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
                            child: const TextField(
                              decoration: InputDecoration(),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid email address.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: const EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Email *'),
                            )),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid password.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: const EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Password *'),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('email girişi onaylandı');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                              textStyle: const TextStyle(fontSize: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text("LOGIN"),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()),
                              );
                            },
                            child: Text("FORGOT PASSWORD ?"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            color: Color.fromARGB(255, 230, 226, 226),
                            thickness: 3, //kalınlık
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "DON'T HAVE ACCOUNT ?",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                              textStyle: const TextStyle(
                                fontSize: 19,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text("SIGNUP"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
