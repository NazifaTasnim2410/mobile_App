import 'package:flutter/material.dart';
import 'package:second_project/screens/secondpage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,

      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return SecondPage();
            })
            );
          },
          child: Text("Go to the next page"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black54),
                foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(3)
          ),
        ),
      ),
    );
  }
}
