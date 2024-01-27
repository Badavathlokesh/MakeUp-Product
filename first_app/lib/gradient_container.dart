import "package:flutter/material.dart";

class Gradientcontainer extends StatelessWidget {
   const Gradientcontainer({super.key});
   
   @override
   Widget build(context){
    return Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(  
              colors: [
                 Colors.blue,
                  Colors.green,
                 ], 
                 begin: Alignment.topLeft,
                 end: Alignment.bottomLeft,
            ),
          ),
          child: const Center(
            child:Text("hello world",style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),),
            ),
        );
   }
}