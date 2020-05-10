import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'FirstHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    String _username,_email,_password,_card="";



    Widget NameInput() {
      return TextFormField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text ,
        decoration: InputDecoration(
          labelText: "Username",
          hintText: "e.g Morgan",
          suffixIcon: Icon(Icons.person_pin_circle),
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color.fromRGBO(150,150,150,1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color.fromRGBO(0,0,0,1.0),
              width: deviceSize.width * 0.05,
            ),
          ),
        ),
        textInputAction: TextInputAction.next,
        validator: (name){
          Pattern pattern =
              r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
          RegExp regex = new RegExp(pattern);
          if (!regex.hasMatch(name))
            return 'Invalid username';
          else
            return null;

        },
        onSaved: (name)=> _username = name,
      );
    }

    Widget EmailInput() {
      return TextFormField(
        keyboardType: TextInputType.emailAddress ,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "e.g abc@gmail.com",
          suffixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color.fromRGBO(150,150,150,1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color.fromRGBO(0,0,0,1.0),
              width: deviceSize.width * 0.05,
            ),
          ),
        ),
        textInputAction: TextInputAction.next,
        validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",
        onSaved: (email)=> _email = email,
      );
    }

    Widget PasswordInput() {
      return TextFormField(
        keyboardType: TextInputType.text ,
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: Icon(Icons.lock),
          hintText: "letters and numbers",
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color.fromRGBO(150,150,150,1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color.fromRGBO(0,0,0,1.0),
              width: deviceSize.width * 0.05,
            ),
          ),
        ),
        textInputAction: TextInputAction.done,
        validator: (password){
          Pattern pattern =
              r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
          RegExp regex = new RegExp(pattern);
          if (!regex.hasMatch(password))
            return 'Invalid password';
          else
            return null;
        },
        onSaved: (password)=> _password = password,
      );
    }

    Widget CardInput() {
      return TextFormField(
        keyboardType: TextInputType.text ,
        decoration: InputDecoration(
          labelText: "Cash App or Card Info",
          suffixIcon: Icon(Icons.credit_card),
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color.fromRGBO(150,150,150,1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color.fromRGBO(0,0,0,1.0),
              width: deviceSize.width * 0.05,
            ),
          ),
        ),
        textInputAction: TextInputAction.done,
        validator: (info){
          Pattern pattern =
              r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
          RegExp regex = new RegExp(pattern);
          if (!regex.hasMatch(info))
            return 'Invalid Card Info';
          else
            return null;

        },
        onSaved: (name)=> _card = name,

      );
    }

    MaterialButton LoginButton(){
      return MaterialButton(onPressed: () {
        if(_formKey.currentState.validate()) {
          _formKey.currentState.save();
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => FirstScreen()
          ));
        }
        },
        color: Colors.green,
        height: 50,
        minWidth: deviceSize.width*0.8,
        shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text("Login",
          style: TextStyle(fontSize: 20, fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color:  Colors.green,//Color.fromRGBO(23, 185, 247, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  )
                ),
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: deviceSize.height*0.25*0.18),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.people,color: Colors.white,size:60,),
                      Text(
                        "LOGIN PAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ),
              ),

              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              Container(
                //height: deviceSize.height*0.54,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.only(left: deviceSize.width * 0.06,
                    right: deviceSize.width * 0.06),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      NameInput(),
                      SizedBox(
                        height: deviceSize.height * 0.03,
                      ),
                      EmailInput(),
                      SizedBox(
                        height: deviceSize.height * 0.03,
                      ),
                      PasswordInput(),
                      SizedBox(
                        height: deviceSize.height * 0.03,
                      ),
                      CardInput(),
                      SizedBox(
                        height: deviceSize.height * 0.05,
                      ),
                      LoginButton()
                    ],
                  ),
                ) ,
              ),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
