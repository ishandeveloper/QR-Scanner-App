import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String result="Come on! Scan Something.";

  Future scanQR() async{

    try{  
        String qrResult=await BarcodeScanner.scan();

        setState(() {
          result=qrResult;
        });
    }on PlatformException catch (e){
      if(e.code==BarcodeScanner.CameraAccessDenied){
        setState(() {
          result="Oops! Camera Permission Required.";
        });
      }
      else{
        setState(() {
          result="Ouch, an unknown error! $e";
        });
      } 
    }
    on FormatException catch (e){
      setState((){
        result="Come On! Scan Something.";
      });
    }catch (e){
      setState(() {
          result="Ouch, an unknown error! $e";
        });
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: <Widget>[
    
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.info,color:Colors.grey[200])
          )
          
        ],
        elevation: 0,
        title:Text("QR SCANNER"),
        ),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:24.0),
                child: Container(
                  child: Text(result,
                  textAlign: TextAlign.justify,
                  style:TextStyle(
                    
                    color:Colors.grey[600],
                    fontSize: 16
                    )
                    ),
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
          
          icon:Icon(Icons.search),
          label:Text("Scan"),
          onPressed: scanQR,
              )
          
          
        ),
        
    );
  }
}