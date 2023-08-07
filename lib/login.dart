import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  bool checkBox1 = false;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Stack(
              children: <Widget> [
                Container(
                  width: 500,
                  height: 220,
                  color: Colors.blueAccent,
                    child: Image.asset(
                      'assets/images/study.png',
                      height: 35,
                      width: 40,
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 194.0),
                  width: 500,
                  height: 650,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                ),
                  child: Column(
                    children: [
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top: 40.0,right: 250),
                          child:  Text("Sign Up",style: TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight:FontWeight.w500),),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15,right: 270),
                          child: Text(
                            "Full Name",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Full Name',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top: 1,right: 290),
                          child: Text(
                            "Email",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(top: 1,right: 270),
                          child: Text(
                            "Password",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                          child: TextField(
                            style: const TextStyle(fontSize: 15),
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password ',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          child: SizedBox(
                            width: 315.0,
                              height: 40,
                              child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(10)
                                  ),//content padding inside button
                              ), child: const Text("Register",style: TextStyle(color: Colors.white  ),),))
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 143,
                                  height: 2,
                                  color: Colors.black26,
                                ),
                                const SizedBox(width: 25,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("or"),),
                                    ),
                                Container(
                                  width: 143,
                                  height: 2,
                                  color: Colors.black26,
                                ),
                    ],
                  ),
                      ),

                      Container(
                          child: SizedBox(
                              width: 315.0,
                              height: 45,
                              child: ElevatedButton.icon(onPressed: () {},style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(color: Colors.blueAccent),
                                ),//content padding inside button
                              ), label: const Text("Sign up with Google",style: TextStyle(color: Colors.blueAccent),),
                                icon: Image.asset(
                                  'assets/images/gogel.png',
                                  height: 20.0,
                                  width: 20.0,
                                ),

                              ))
                      ),



                      Container(
                        child:Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Alredy have an account? ',
                              style: TextStyle(color: Colors.black26, fontSize: 13),
                              children: [
                                TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
          ],
        ),
      ),
    ),
    );
  }
}


