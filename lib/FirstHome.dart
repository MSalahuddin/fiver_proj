import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Tick.dart';
import 'Cashout.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  String username="XYZ";
  double amount=2345.45;



  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    moneyCard(int amt,Color c)
    {
      return Container(
        alignment: Alignment.centerLeft,
        width: deviceSize.width*0.85,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: c,
        ),
        padding: EdgeInsets.only(left: deviceSize.width * 0.06,
            right: deviceSize.width * 0.06),
        child: Text(
          "\$$amt",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.start,
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
                    color:  Colors.green,
                    borderRadius: BorderRadius.only(
                      //bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(35),
                    )
                ),
                height: 100,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: deviceSize.height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "\$$amount",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$username",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.08),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>FirstScreen()
                              ));
                            },
                            child: Text(
                              "Add Funds",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Icon(Icons.settings,size: 30,color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              moneyCard(1, Colors.green),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(5, Colors.blue),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(10, Colors.orange),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(20, Colors.red),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(50, Colors.purple),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(100, Colors.black),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              moneyCard(1000, Color.fromRGBO(225, 223, 0, 1)),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Tick()
                        ));
                      },
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              color:  Colors.green,
                              height: 50.0, // height of the button
                              width: 50.0, // width of the button
                              child: Center(child: Text("#",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Pick a number",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>CashOut()
                        ));
                      },
                      child: Column(
                        children: <Widget>[

                          ClipOval(
                            child: Container(
                              color:  Colors.green,//Color.fromRGBO(23, 185, 247, 1),
                              height: 50.0, // height of the button
                              width: 50.0, // width of the button
                              child: Center(child: Icon(Icons.attach_money,color: Colors.white,size: 28,)),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Cash Out",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
