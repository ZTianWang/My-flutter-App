import 'package:flutter/material.dart';
import 'package:getskills_flutter/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Signup",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Username",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Username',  
                  hintText: 'Username',  
                ),  
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Email Address',  
                  hintText: 'Email Address',  
                ),  
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Phone",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Phone Number',  
                  hintText: 'Phone Number',  
                ),  
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),  
                  labelText: 'Password',  
                  hintText: 'Password',  
                ),  
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 53, 99, 233),
                        Color.fromARGB(255, 53, 99, 233)
                      ]
                    )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))
                },
                child: Text(
                  "Already Have an Account? Login",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}