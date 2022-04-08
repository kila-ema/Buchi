import 'package:flutter/material.dart';
import 'congra.dart';
// import 'package:http/http.dart' as http;


class Address extends StatelessWidget {
  const Address({ Key? key }) : super(key: key);

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
          ],),
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("We don't know how to reach you", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ), ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text("Place your name and phone number,we will contact you asap",style: TextStyle(
                    fontSize: 14,
                  ),),
                ),
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: ('name'),
                    )  
                    
                  ),
                ),
                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: ('Phone number'),
                    )                     
                  ),
                ),
                SizedBox(height: 120,),
                
              ],
            ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Congra()));
                      //   async {
                      // final response = await http.post(
                      // Uri.parse(
                      //   "http://209.97.133.58:8000/documenter.getpostman.com/view/20052066/UVsMw6h1"),
                      // headers: <String, String>{
                      // 'Content-Type': 'application/json; charset=UTF-8'
                      //  },
                      // body: jsonEncode(<String, String>{
                      // 'Name': name,
                      // 'Phone_number': phonumber,
                      // }));
                       },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                             color: Colors.grey.withOpacity(0.3),
                             spreadRadius: 3,
                             blurRadius: 7,
                            //offset: Offset(0, 3),
                        )
                            ]
                        ),
                        child: Text('save',style: TextStyle(color: Colors.white, fontSize: 18) ),
                      ),
                    ),
          ],
        ),
      ),
      
    );
  }
}