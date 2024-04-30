import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class register_class extends StatefulWidget {
  const register_class({super.key});

  @override
  State<register_class> createState() => _register_classState();
}

class _register_classState extends State<register_class> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    routes:
    {
      (context) => login_class();
    }
    ;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 226, 223, 226),
          child: Column(
            children: [
              Image.asset(
                "images/stark.jpg",
                height: 120.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "WELCOME TO REGISTER",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "font1",
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: userName,
                  keyboardType: TextInputType.name,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "User Email",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: contact,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "User Contact No.",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  onPressed: () {
                    if (userName.text.isEmpty ||
                        email.text.isEmpty ||
                        contact.text.isEmpty ||
                        password.text.isEmpty ||
                        confirmPassword.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please fill all fields!");
                    } else if (!email.text.contains("@")) {
                      Fluttertoast.showToast(msg: "Invalid Mail Address");
                    } else if (password.text.length < 6) {
                      Fluttertoast.showToast(
                          msg: "Password must be more than 6 characters");
                    } else if (!(password.text == confirmPassword.text)) {
                      Fluttertoast.showToast(
                          msg: "Password and Confirm Password don't match!");
                    } else {
                      Fluttertoast.showToast(
                          msg: userName.text +
                              " " +
                              email.text +
                              " " +
                              contact.text +
                              " " +
                              password.text);
                    }
                  },
                  child: Text(
                    "Save",
                    style:
                        TextStyle(fontFamily: "font2", color: Colors.black87),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login_class()),
                    );
                  },
                  child: Text(
                    "Already Have an acoount? Login Here!",
                    style:
                        TextStyle(fontFamily: "font2", color: Colors.black54),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}

class login_class extends StatefulWidget {
  const login_class({super.key});

  @override
  State<login_class> createState() => _login_classState();
}

class _login_classState extends State<login_class> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 226, 223, 226),
          child: Column(
            children: [
              Image.asset(
                "images/stark.jpg",
                width: double.infinity,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "WELCOME TO LOGIN",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "font1",
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "User Email",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "font2"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  onPressed: () {
                    if (email.text.isEmpty || password.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please fill all fields!");
                    } else if (!email.text.contains("@")) {
                      Fluttertoast.showToast(msg: "Invalid Mail Address");
                    } else if (password.text.length < 6) {
                      Fluttertoast.showToast(
                          msg: "Password must be more than 6 characters");
                    } else {
                      Fluttertoast.showToast(
                          msg: email.text + " " + password.text);
                    }
                  },
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontFamily: "font2", color: Colors.black87),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register_class()),
                    );
                  },
                  child: Text(
                    "Don't Have an Account? Register Here!",
                    style:
                        TextStyle(fontFamily: "font2", color: Colors.black54),
                  )),
              SizedBox(
                height: 95.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
