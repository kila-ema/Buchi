import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttomNavigationBar.dart';
import 'Widget/multiSelectDropDown.dart';

class SearchForm extends StatefulWidget {
  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {  
  final withCh = {'Yes','No'};
  final age = {'Adult','Young','Puppy','Senior'};
  final gender = {'Male','Female'};
  final size = {'Small','Medium','Big'};
  bool val1 = true;
  Object? value;

  void onChangedFunction(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
  }
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
       padding: const EdgeInsets.only(top: 30,left: 15),
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
                SizedBox(height: 10,),         
           Text("Good with children",style: TextStyle(
             fontSize: 18, color: Colors.black.withOpacity(0.5)
           ),),
           SizedBox(height: 10,),
           Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
             child: DropdownButtonHideUnderline(
               child: DropdownButton(
                 isExpanded: true,
                 dropdownColor: Colors.white,
                 value: value,
                 items: withCh.map(buildMenuItem).toList(),
                 onChanged: (value) => setState(() => this.value = value ),
                 ),
                 ),
           ),
           SizedBox(height: 10,),
           Text("Age",style: TextStyle(
             fontSize: 18, color: Colors.black.withOpacity(0.5)
           ),),
           SizedBox(height: 10,),
           Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
             child: DropdownButtonHideUnderline(
               child: DropdownButton(
                 isExpanded: true,
                 dropdownColor: Colors.white,
                 value: value,
                 items: age.map(buildMenuItem).toList(),
                 onChanged: (value) => setState(() => this.value = value ),
                 ),
                 ),
           ),
           SizedBox(height: 10,),
           Text("Gender",style: TextStyle(
             fontSize: 18, color: Colors.black.withOpacity(0.5)
           ),),
           SizedBox(height: 10,),
           Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
             child: DropdownButtonHideUnderline(
               child: DropdownButton(
                 isExpanded: true,
                 dropdownColor: Colors.white,
                 value: value,
                 items: gender.map(buildMenuItem).toList(),
                 onChanged: (value) => setState(() => this.value = value ),
                 ),
                 ),
           ),
           SizedBox(height: 10,),
           Text("Size",style: TextStyle(
             fontSize: 18, color: Colors.black.withOpacity(0.5)
           ),),
           SizedBox(height: 10,),
           Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
             child: DropdownButtonHideUnderline(
               child: DropdownButton(
                 isExpanded: true,
                 dropdownColor: Colors.white,
                 value: value,
                 items: size.map(buildMenuItem).toList(),
                 onChanged: (value) => setState(() => this.value = value ),
                 ),
                 ),
           ),
          //  SizedBox(height: 10,),
           CustomSwitch('include pets listed on petfinder too', val1, onChangedFunction),
           Container(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtomNav(
                            )));
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.search,color: Colors.red,size: 60,),
                              Text('Look',style: TextStyle(color: Colors.red, fontSize: 20),)
                            ],
                          ),
                        ),
                      )
         ],       
       ),
     ),      
    );
  }
}
DropdownMenuItem<String> buildMenuItem(String type) => DropdownMenuItem(
        value: type,
        child: Text(type),
        );
Widget CustomSwitch(String text, bool val,Function onChangedMethod){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Container(
      width: 500,
      child: Row(
        children: <Widget>[
          Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.red,
              value: val,
              onChanged: (newValue){
                onChangedMethod(newValue);
              }
              ),
          ),
            Text(text)
        ]
        ),
    ), 
    );
}