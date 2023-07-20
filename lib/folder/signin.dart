import 'package:flutter/material.dart';
import 'package:flutter_applicationnn/folder/floating.dart';
import 'package:flutter_applicationnn/folder/floating1.dart';
import 'package:flutter_applicationnn/folder/register.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  final _formfield = GlobalKey<FormState>;
  final nameController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  String itemSelected = 'User';
  List items = ['User', 'Penyedia Jasa'];
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
          margin: EdgeInsets.only(top: 230),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 210),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
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
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return '';
                                              }
                                            },
                                            keyboardType: TextInputType.name,
                                            controller: nameController,
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
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ))
                    ],
                  )),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 7),
                width: 300,
                child: DropdownButtonFormField(
                  items: items.map((item) {
                    return DropdownMenuItem(
                      child: Row(children: [Text(item)]),
                      value: item,
                    );
                  }).toList(),
                  value: itemSelected,
                  onChanged: (val) {
                    setState(() {
                      itemSelected = val as String;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Passwort'),
                ),
              ),
              SizedBox(height: 20),
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
                              builder: (context) => Floating(),
                            ));
                      }

                      if (itemSelected == "Penyedia Jasa")
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Floatings(),
                            ));
                    },
                    child: Text('Login')),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text('Register')),
              )
            ],
          )),
    ));
  }
}
