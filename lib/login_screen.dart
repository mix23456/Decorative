import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/forget_password.dart';
import 'package:project_curtain/login.dart';
import 'package:project_curtain/login2.dart';
import 'package:project_curtain/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class APIService {
  Future login(LoginRequestModel requestModel) async {
    // String url = "https://reqres.in/api/login";
    final prefs = await SharedPreferences.getInstance();
    String url = 'http://178.128.53.98:8862/api/v1/user/login';
    final response =
        await http.post(Uri.parse(url), body: requestModel.toJson());
    print(response.statusCode);
    print(response.body);
    bool isLogin = false;
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['status'] == 5000) {
        isLogin = false;
        await prefs.setString('tokenUser', '');
      }
      if (data['status'] == 1000) {
        isLogin = true;
        await prefs.setString('tokenUser', data['message']['data']['token']);
      }
      print(LoginResponseModel.fromJson(data));
      return isLogin;
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _rememberMe = false;
  @override
  void initState() {
    super.initState();
    loginRequestModel = LoginRequestModel(email: '', password: '');
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin:
                      const EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 25),
                        Container(
                            height: 264,
                            child: Image.asset('assets/logos/logo.png')),
                        const SizedBox(height: 20),
                        Container(
                          width: 360,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (input) =>
                                loginRequestModel.email = input!,
                            validator: (input) => !input!.contains('@')
                                ? "Email Id should be valid"
                                : null,
                            decoration: InputDecoration(
                              hintText: "Email",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.red),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 360,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            onSaved: (input) =>
                                loginRequestModel.password = input!,
                            validator: (input) => input!.length < 3
                                ? "Password should be more than 3 characters"
                                : null,
                            // obscureText: hidePassword,
                            decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                )
                                // suffixIcon: IconButton(
                                //   onPressed: () {
                                //     setState(() {
                                //       hidePassword = !hidePassword;
                                //     });
                                //   },
                                //   icon: Icon(hidePassword
                                //       ? Icons.visibility_off
                                //       : Icons.visibility),
                                // ),
                                ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 360,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: _rememberMe,
                                      checkColor: Colors.black,
                                      activeColor: Colors.black26,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext2),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ForgetScreen(),
                                  ),
                                ),
                                child: Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colorBlue),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            if (validateAndSave()) {
                              print(loginRequestModel.toJson());

                              setState(() {
                                isApiCallProcess = true;
                              });

                              APIService apiService = APIService();
                              apiService.login(loginRequestModel).then((value) {
                                print(value);
                                if (value) {
                                  print('login success');
                                  setState(() {
                                    isApiCallProcess = false;
                                  });

                                  final snackBar = const SnackBar(
                                      backgroundColor: Colors.black,
                                      content: Text("Login Successful"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) =>
                                          const TabsScreen())));
                                } else {
                                  print('login failed');
                                  setState(() {
                                    isApiCallProcess = false;
                                  });
                                  final snackBar = const SnackBar(
                                      backgroundColor: Colors.black,
                                      content: Text('ลงชื่อเข้าใช้ไม่ได้'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: colortext1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              minimumSize: const Size(160, 48)),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
