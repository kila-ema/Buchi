  import 'package:flutter/material.dart';
  import 'buttomNavigationBar.dart';

  class Congra extends StatelessWidget {
    const Congra({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 244, 227),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Icon(Icons.flutter_dash,color: Colors.black,),
          centerTitle: true,
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black54,
              )
              ],
              ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, top: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Congratulations",style: TextStyle(
                color: Color.fromARGB(171, 141, 42, 2),
                fontSize: 45,
                fontWeight: FontWeight.w900
              ),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30),
                child: Text('We will setup a meeting with your companion soon :)',style: TextStyle(
                  fontSize: 18              
                ),),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtomNav()));
                },
                child: Text('Browser for more...',style: TextStyle(
                  color: Color.fromARGB(255, 255, 102, 0),
                  fontSize: 18
                ),),
              )
            ],
          ),
        ),

                        
      );
    }
  }