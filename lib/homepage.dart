import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body:Container(
          alignment: Alignment.topCenter,
          child:Column(children: <Widget>[

          Container(
            alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.35,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:BorderRadius.only(
                  bottomLeft:Radius.circular(30),
                  bottomRight: Radius.circular(30)
                  ),

                  boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey[400],
                    spreadRadius: 1,
                    offset: Offset(1,1)
                    )
                    ]

                ),

                child: Container(
                  child: Image.asset('assets/hero2.png',alignment: Alignment.center)
                  
                  ),),

            Expanded(child: Center(
              child: Container(
                child: Text("Come on! Scan Something",
                style:TextStyle(
                  color:Colors.grey[600],
                  fontSize: 16
                  )
                  ),
                  ),
            ),
            )

          ],
          )
          ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Transform.scale(
              scale:1.1,
              child: FloatingActionButton.extended(
          
          icon:Icon(Icons.add_a_photo),
          label:Text("Scan"),
          onPressed: (){

          },
          
        ),
        
      ),
    );
  }
}