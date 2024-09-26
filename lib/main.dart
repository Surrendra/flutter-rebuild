import 'package:flutter/material.dart';
import 'package:flutter_with_c/models/user.dart';
import '/views/atoms/Input_field.dart';
import '/services/api_service.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
    title: "MyHomePage"
  )
);

class HomePage extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiService apiService = ApiService(baseUrl: "https://aeroxspace.dev.instantlybooking.com");
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange.shade900,
                  Colors.orange.shade800,
                  Colors.orange.shade400
                ]
            )
        ),
        child: SingleChildScrollView( // Added SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 10,),
                    Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60,),
                      Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, 3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            LoginInputField(hintText: "Username | Email",controller: userNameController,),
                            LoginInputField(hintText: "Password", obscureText: true,controller: passwordController,)
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forget Password", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 40,),
                      GestureDetector(
                        onTap: () => _login(context),
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade900
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) async{
    final username = userNameController.text;
    final password = passwordController.text;

    final user = User(username: username, password: password,station_id: 4);
    try{
      final res = await apiService.login(user);
      print(res);
    }catch(e){
      print('Error $e');
    }
  }
}


