import 'package:flutter/material.dart';
import 'package:flutter_applicationnn/folder/signin.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formfield = GlobalKey<FormState>;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  bool passToggle1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Back.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          margin: EdgeInsets.only(top: 170),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 210),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  child: Column(
                    children: [
                      Container(
                          width: 300,
                          child: Container(
                            child: Container(
                              width: 280,
                              child: Column(
                                children: [
                                  Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.name,
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return '';
                                              }
                                            },
                                            decoration: InputDecoration(
                                                labelText: "Username",
                                                prefixIcon: Icon(Icons.people)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            controller: emailController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return '';
                                              }
                                            },
                                            decoration: InputDecoration(
                                                labelText: "Email",
                                                prefixIcon: Icon(Icons.email)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            controller: passController,
                                            obscureText: passToggle,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return '';
                                              }
                                            },
                                            decoration: InputDecoration(
                                              labelText: "Password",
                                              prefixIcon: Icon(Icons.lock),
                                              suffix: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    passToggle = !passToggle;
                                                  });
                                                },
                                                child: Icon(passToggle
                                                    ? Icons.visibility
                                                    : Icons.visibility_off),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            controller: passController,
                                            obscureText: passToggle1,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return '';
                                              }
                                            },
                                            decoration: InputDecoration(
                                              labelText: "Confirm Password",
                                              prefixIcon: Icon(Icons.lock),
                                              suffix: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    passToggle = !passToggle;
                                                  });
                                                },
                                                child: Icon(passToggle
                                                    ? Icons.visibility
                                                    : Icons.visibility_off),
                                              ),
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ))
                    ],
                  )),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signin(),
                        ));
                  },
                  child: Text('Sudah punya Akun'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      }
                    },
                    child: Text('Register')),
              )
            ],
          )),
    ));
  }
}
