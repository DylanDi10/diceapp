import 'package:flutter/material.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nDado=1;
  void aumentarDado(){
    nDado=nDado==6 ? 1: nDado+1;
  }
  void disminuirDado(){
    nDado=nDado==1 ? 6:nDado-1 ;
  }
  void shuffleDado(){
    nDado= Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text(" Dice App "),
      centerTitle: true,),
      body:Center(
        child:Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color:Colors.red,
              //BORDES REDONDEADOS
              borderRadius: BorderRadius.circular(16)

              
              ),
              child: Image.asset("assets/images/dice$nDado.png",
              height: 200,
              width: 200,)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  ElevatedButton(onPressed: (){
                    disminuirDado();
                    setState(() {           
                    });
                  }, child: Icon(Icons.arrow_left_rounded)),  
                  SizedBox(width: 16),
                  ElevatedButton(onPressed: (){
                    shuffleDado();
                    setState(() {           
                    });
                  },child: Icon(Icons.shuffle)),
                  SizedBox(width: 16),
                  ElevatedButton(onPressed: (){
                    aumentarDado();
                    setState(() {           
                    });
                  }, child: Icon(Icons.arrow_right_rounded)),  
                  ],
              )
          ],
        )
        )
    
    );
  }
}