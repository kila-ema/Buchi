  import 'package:flutter/material.dart';
  import 'petsDetail.dart';
  import 'package:flutter/cupertino.dart';
  import 'Widget/multiSelectDropDown.dart';

  class Home extends StatefulWidget {
    const Home({ Key? key }) : super(key: key);
    
    @override
    State<Home> createState() => _HomeState();
  }

  class _HomeState extends State<Home> {
  var cardInfo = [
      {
        'name' : 'Dog',
        'image' : 'Asset/Image/Dog_big.jpeg',
        'carousel1' : 'Asset/Image/Dog_big1.jpeg',
        'carousel2' : 'Asset/Image/Dog_big2.jpeg',
        'wchild': 'not good with child',
        'size' : 'Big',
        'age' : 'Senior',
        'gender' : 'male'
      },
      {
        'name' : 'Cat',
        'image' : 'Asset/Image/Cat_small.jpeg',
        'carousel1' : 'Asset/Image/Cat_small1.jpeg',
        'carousel2' : 'Asset/Image/Cat_small2.jpeg',
        'wchild': 'good with child',
        'size' : 'Small',
        'age' : 'Young',
        'gender' : 'Female'
      },
      {
        'name' : 'Parrot',
        'image' : 'Asset/Image/Parrot.jpeg',
        'carousel1' : 'Asset/Image/Parrot1.jpeg',
        'carousel2' : 'Asset/Image/Parrot2.jpeg',
        'wchild': 'good with child',
        'size' : 'Medium',
        'age' : 'Adult',
        'gender' : 'male'
      },
      {
        'name' : 'Cat',
        'image' : 'Asset/Image/cat.jpg',
        'carousel1' : 'Asset/Image/Cat_big.jpeg',
        'carousel2' : 'Asset/Image/Cat_big1.jpeg',
        'wchild': 'not good with child',
        'size' : 'Medium',
        'age' : 'adult',
        'gender' : 'male'
      },
      {
        'name' : 'Owl',
        'image' : 'Asset/Image/Owl.jpeg',
        'carousel1' : 'Asset/Image/Owl1.jpeg',
        'carousel2' : 'Asset/Image/Owl2.jpeg',
        'wchild': 'good with child',
        'size' : 'Big',
        'age' : 'young',
        'gender' : 'male'
      },      
      {
        'name' : 'Dog',
        'image' : 'Asset/Image/Dog_small.jpeg',
        'carousel1' : 'Asset/Image/Dog_small1.jpeg',
        'carousel2' : 'Asset/Image/Dog_small2.jpeg',
        'wchild': 'good with child',
        'size' : 'Small',
        'age' : 'puppy',
        'gender' : 'male'
      }
      
    ];
    final type = {'Dog', 'Cat', 'Other'};
    bool val1 = true;
  
    void onChangedFunction(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
  }
    Object? value;
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
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MultiSelect(),                
                    Padding(
                      padding: EdgeInsets.only(right: 10,), 
                      child: Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('sort by:', style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black.withOpacity(0.5)
                                ),),
                                Text('Nearest', style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(0.5)
                                ),)                           
                              ],
                            ),
                            Icon(Icons.arrow_drop_down_sharp,size: 30,color: Colors.black.withOpacity(0.5))
                          ],
                        ),
                    
                      ),
                    )
                  ],
                ),
                ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: cardInfo.length,
                itemBuilder: (BuildContext ctx, int index) {
                            String imageN = cardInfo[index]['image'].toString();
                            String aName = cardInfo[index]['name'].toString();
                            String car1 = cardInfo[index]['carousel1'].toString();
                            String car2 = cardInfo[index]['carousel2'].toString();
                            String wChild = cardInfo[index]['wchild'].toString();
                            String age = cardInfo[index]['age'].toString();
                            String size = cardInfo[index]['size'].toString();
                            String gender = cardInfo[index]['gender'].toString();
                            return InkWell(
                               onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                 builder: (context) => new petDetail(
                                   name: aName,
                                   img1: imageN,
                                   img2: car1,
                                   img3: car2,
                                   withChild: wChild,
                                   age: age,
                                   size: size,
                                   gender: gender,

            ))),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(imageN),
                                      fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 10,
                                          blurRadius: 15,
                                          offset: Offset(0, 3), 
                                        )
                                      ]
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: 50,
                                          height: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.5)
                                          ),
                                          child: Text(aName[0], style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),),
                                        )
                                      ],
                                    ),
                                ),
                              ),
                            );
                          }
                          ),
                          
                         
                          ]
            ),
          ),
          
        )
          
      );   
          
    }
  } 
  DropdownMenuItem<String> buildMenuItem(String type) => DropdownMenuItem(
        value: type,
        child: Row(
          children: [
            Text(type),
            // Transform.scale(
            //   scale: 0.8,
            //   child: CupertinoSwitch(value: false, 
            //   onChanged: (newValue){          
            //     } ),
            // )
          ],
        ),
        );



