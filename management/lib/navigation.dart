import 'package:flutter/material.dart';
import 'package:get/get.dart';

class navigation extends StatelessWidget{
  const navigation({super.key});

  @override
  widget build(context){
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('navigation'),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async{

                  var data = await Get.to(

                    () => const nextscreen(),

                    arguments: "hello world from Get.to()",
                  )
                }, child: const Text('Get.to(nextscreen())')
            ],
          ) ,)
         

         
    ),
    );
  }
  
}