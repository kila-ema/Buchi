import 'package:flutter/material.dart';
import 'address.dart';
import 'package:carousel_pro/carousel_pro.dart';


class petDetail extends StatefulWidget {
  final name; final img1; final img2; final img3; final withChild; final size; final gender; final age;

  petDetail({
    this.name, this.img1, this.img2, this.img3, this.age, this.gender, this.size, this.withChild
  });
    

  @override
  State<petDetail> createState() => _petDetailState();
}

class _petDetailState extends State<petDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            body: Column(
              children: <Widget>[
                Container(
      height: 200,
      child: Carousel(
        animationDuration: Duration(milliseconds: 3000),
        animationCurve: Curves.ease,
        boxFit: BoxFit.cover,
        images:[
          AssetImage(widget.img1),
          AssetImage(widget.img2),
          AssetImage(widget.img3),
        ]
      )
    ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 244, 227),
                    // borderRadius: BorderRadius.only(topLeft: 10,topRight: 10)
                  ),                 
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top:20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(widget.name,style: TextStyle(
                          color: Color.fromARGB(255, 148, 75, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.bold                        
                        ),),
                      ),
                      DivideLine(),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(widget.withChild),
                      ),
                      DivideLine(),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text('Age: '+ widget.age),
                      ),
                      DivideLine(),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text('Gender: '+ widget.gender),
                      ),
                      DivideLine(),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text('Size: '+ widget.size),
                      ),
                      DivideLine(),
                      SizedBox(height: 25,),
                      Container(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.favorite,color: Colors.red,size: 60,),
                              Text('Adopt me',style: TextStyle(color: Colors.red, fontSize: 20),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            )
      
    );
  }

  Padding DivideLine() {
    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        // indent: 2,
                        endIndent: 0,
                        color: Colors.grey,

                      ),
                    );
  }
}