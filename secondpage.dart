import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Second Page"),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black.withOpacity(0.48),

      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Text(
              "Welcome to second Page",
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w900
            ) ,
          ),


        SizedBox(
            height: 30,
          ),


          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },

            child: Container(
             // height: 60,
              //width: 150,
              //alignment: Alignment.center,
             //color: Colors.blue,(Can not do it might face error, have to use box decoration)
              //margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 55),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Go back",style: TextStyle(color: Colors.white)),
            ),
          )

        ]
        ),
      ),
    );
  }
}
