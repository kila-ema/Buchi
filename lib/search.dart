      import 'dart:ffi';

    import 'package:flutter/material.dart';
    import 'searchForm.dart';

      class Search extends StatefulWidget {
        const Search({ Key? key }) : super(key: key);

        @override
        State<Search> createState() => _SearchState();
      }

      class _SearchState extends State<Search> {
        @override
        Widget build(BuildContext context) {
          
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 244, 227),
            appBar: AppBar(
              backgroundColor: Colors.white,
              // leading: Center(
              //   child: Text('',style: TextStyle(
              //     color: Colors.red
              //   ),), ),
                title: Icon(Icons.flutter_dash,color: Colors.black,),
                centerTitle: true,
              actions: [
            Icon(
              Icons.menu,
            color: Colors.black54,
            )
          ],),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchForm()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(            
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Photo('Asset/Image/Dog.jpg'),
                          sideText('Dogs', 'A mans best friend since the begining', 'Seek companionship from one the best human friend ever',true)
                
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchForm()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(            
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[                    
                          sideText('Cats', 'Magestic cue, even queen', 'Seek companionship from one magestic pets of all the time',true),
                          Photo('Asset/Image/cat.jpg'),
                
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchForm()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(            
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Photo('Asset/Image/bird.jpg'),
                          sideText('Others', 'Birds, Chamelon and many others', 'Seek companionship from the exotic one that makes you feel unique',true)
                
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )      
          );
        }
        Container Photo(String img){
          return Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow( 
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset: Offset(0, 3), 
          ), 
              
                ]
            ),
          );
        }
        Padding sideText(String name, String title, String description, bool isRight){
          return Padding(
            padding: const EdgeInsets.only(top: 10, right: 5, left: 10),
            child: Container(
              width: MediaQuery.of(context).size.width*0.4,
              child: Column(    
                        
              children: <Widget>[
                Flexible(
                  child: Text(name, style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w300,
                    color: Colors.orange[700]
                  ),),
                ),
                SizedBox(height: 5,),
                Flexible(
                  child: Text(title, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),),
                ),
                SizedBox(height: 8,),
                Flexible(
                  child: Text(description, style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                    
                  ),),
                )
              ],
              )
            ),
          );     
          } 
        }
      