import 'dart:async';
import 'package:fiverr/FirstHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tick extends StatefulWidget {
  @override
  _TickState createState() => _TickState();
}

class _TickState extends State<Tick> {
  bool running=false;
  int pot=20;
  String user1="ABC";
  String user2="XYZ";

  Timer _timer;
  int _start = 15;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
            Navigator.push(context,MaterialPageRoute(
              builder: (context)=>FirstScreen()
            ));
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 0), ()=> startTimer());
  }



  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;


    numCircle(int num)
    {
      Color c=Colors.green;
      return GestureDetector(
          onTap: (){
            setState(() {
              c=Colors.green;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color:  c,
              border: Border.all(color: Colors.green,width: 1,style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20),
            ),

            height: 32.0, // height of the button
            width: 32.0, // width of the button
            child: Center(child: Text("$num",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)),
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
                      //bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(35),
                    )
                ),
                height: deviceSize.height*0.2,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: deviceSize.height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Pot",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.08),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "$user1",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$user2",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.08,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: deviceSize.width*0.8,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$_start",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "seconds",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: deviceSize.height * 0.08,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(1),
                  numCircle(2),
                  numCircle(3),
                  numCircle(4),
                  numCircle(5),
                  numCircle(6),
                  numCircle(7),
                  numCircle(8),
                  numCircle(9),
                  numCircle(10),

                ],
              ),

              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(11),
                  numCircle(12),
                  numCircle(13),
                  numCircle(14),
                  numCircle(15),
                  numCircle(16),
                  numCircle(17),
                  numCircle(18),
                  numCircle(19),
                  numCircle(20),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(21),
                  numCircle(22),
                  numCircle(23),
                  numCircle(24),
                  numCircle(25),
                  numCircle(26),
                  numCircle(27),
                  numCircle(28),
                  numCircle(29),
                  numCircle(30),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(31),
                  numCircle(32),
                  numCircle(33),
                  numCircle(34),
                  numCircle(35),
                  numCircle(36),
                  numCircle(37),
                  numCircle(38),
                  numCircle(39),
                  numCircle(40),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(41),
                  numCircle(42),
                  numCircle(43),
                  numCircle(44),
                  numCircle(45),
                  numCircle(46),
                  numCircle(47),
                  numCircle(48),
                  numCircle(49),
                  numCircle(50),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(51),
                  numCircle(52),
                  numCircle(53),
                  numCircle(54),
                  numCircle(55),
                  numCircle(56),
                  numCircle(57),
                  numCircle(58),
                  numCircle(59),
                  numCircle(60),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(61),
                  numCircle(62),
                  numCircle(63),
                  numCircle(64),
                  numCircle(65),
                  numCircle(66),
                  numCircle(67),
                  numCircle(68),
                  numCircle(69),
                  numCircle(70),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(71),
                  numCircle(72),
                  numCircle(73),
                  numCircle(74),
                  numCircle(75),
                  numCircle(76),
                  numCircle(77),
                  numCircle(78),
                  numCircle(79),
                  numCircle(80),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(81),
                  numCircle(82),
                  numCircle(83),
                  numCircle(84),
                  numCircle(85),
                  numCircle(86),
                  numCircle(87),
                  numCircle(88),
                  numCircle(89),
                  numCircle(90),

                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  numCircle(91),
                  numCircle(92),
                  numCircle(93),
                  numCircle(94),
                  numCircle(95),
                  numCircle(96),
                  numCircle(97),
                  numCircle(98),
                  numCircle(99),
                  numCircle(100),

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
