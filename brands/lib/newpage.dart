import 'package:flutter/material.dart';
import 'brands.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:get/get.dart';
import 'package:brands/nextscreen.dart';


class newpage extends StatefulWidget{
  const newpage({super.key});
  

  @override
  State<newpage> createState() => _newpage();
}
 

 class _newpage extends State<newpage>{
 String? selectedValue;
 @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 65, 43, 6),
        title: Center(
          child:Text(
          'MAKE UP PRODUCTS',
          style:Theme.of(context).textTheme.titleLarge!.copyWith(
            color:const  Color.fromARGB(255, 180, 116, 26),
            fontSize: 30,
          ) ,
        ),
      ),
      ),
      
      
      body:Center(
        child: Column(
        children: [
          Container(
            
            margin: const EdgeInsets.all(20),
            child: DropdownSearch<String>(
            items: brands,
            popupProps: const PopupProps.menu(
              showSearchBox: true,
              title: Text("Select an item"),
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                  labelText: "Brand",
                  labelStyle:  TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Color.fromARGB(255, 180, 116, 26),
                  hintText: "Select Brand",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
            onChanged: (value){
              setState(() {
                selectedValue = value;
                print(selectedValue);
              });
            },
            
          ),
          ),
          const SizedBox(height: 20),
           ElevatedButton(
            onPressed: () {
              if (selectedValue != null) {
                Get.to(
                  () => nextscreen(brand: selectedValue!),
                );
              }
            },
             style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 180, 116, 26) ,
             ),
             child:const Text('search',style:TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
             
             )
        ],
      ),
      

      ),
    );
  }
 }

