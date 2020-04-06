import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        title:Text("ABOUT QR SCANNER",style:TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF21BFBD),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      
      body: Stack(
        children: <Widget>[

          Positioned(
          child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width-100,
            child: Card(
              color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 120,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    child: Text("One of the first few apps I made while on my journey to learn flutter.",
                    textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text("You can find the whole source code on",style:TextStyle(fontSize: 12,fontStyle: FontStyle.normal)),
                  Text("github.com/ishandeveloper",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                 
                  SizedBox(height: 50,),
                  Text("Made with ❤ by",style:TextStyle(fontSize: 12,fontStyle: FontStyle.normal)),
                  Text("@ishandeveloper",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 8.0),
                    child: Text("A passionate learner and obsessive seeker of IT knowledge.",
                    style:TextStyle(),
                    textAlign: TextAlign.center,),
                  )
                  ],
              ),
            )
          ),
        ),),
          Align(
            alignment:Alignment.topCenter,
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical:80.0),
              child: Container(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                  backgroundImage: NetworkImage("http://www.ishandeveloper.com/2020%20[old]/assets/img/profile.JPG",),
                  ),
                ),
            ),
          )
        ],
              
      ),
    );
  }
}