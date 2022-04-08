import 'package:flutter/material.dart';
import 'buttomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buchi',
      theme: ThemeData(       
        // primarySwatch: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Asset/Image/Dog.jpg"),
                fit: BoxFit.cover,
                ),
            ),
              child: Padding(
                padding: EdgeInsets.only(right: 200, left: 20,top: 10),
                child: Text("Over 200,000 Stray Dogs on Addis Ababa Street in 2020!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,           
                ),
                        ),
              ),
            ),         
          

          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Text('Be part of the solution', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 10,),
            Text('Adopt stray pets to decrease the number of stray pets on the street for everyone safety.'),
            SizedBox(height: 10,),
            Text('Start journey of finding your companion Now using buchi app'),
            SizedBox(height: 30,),
              ],
            ),
          ),

         

          Container(
            alignment: Alignment.center,
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtomNav()));
            },
             icon: Icon(
               Icons.search,
               size: 40,
               )),
          )

        ]
      ),     
    );
  }
}