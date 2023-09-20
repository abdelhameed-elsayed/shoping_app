import 'package:flutter/material.dart';
import '/screens/register.dart';
import '/screens/verifynumber.dart';
import '/utils/progressdialog.dart';
import '/widgets/edittext.dart';
import '/widgets/submitbutton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ProgressDialog progressDialog;

  @override
  Widget build(BuildContext context) {
    progressDialog = ProgressDialog(context, ProgressDialogType.Normal);
    progressDialog.setMessage('Logging in...');
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("Welcome", style: Theme.of(context).textTheme.headline6),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Login to your account",
                      style: Theme.of(context).textTheme.subtitle2),
                ),
                EditText(title: "Email"),
                EditText(title: "Password"),
                SubmitButton(
                  title: "Login",
                  act: () async {
                    progressDialog.show();
                    Future.delayed(Duration(milliseconds: 1500), () {
                      setState(() {
                        progressDialog.hide();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context)  {
                             return  VerifyScreeen();
                            }
                          ),
                        );
                      });
                    });
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text("Forgot your password?"),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account?  ",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
