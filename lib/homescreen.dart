import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name="empty";
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor:Colors.brown,
        title: Text("Counter App"),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              if(count>=1)
                {
                  count--;
                }
              else
                {
                  count=0;
                }
            });
          }, icon: Icon(Icons.minimize))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            if (name.length>5)
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor:Colors.deepOrange,
                    content:Text("name must have 5 characters"),
                    duration:Duration(seconds: 2),
                  ),
                );
              }
            else
              {
            setState(() {
              /*if(count>9)
                {
                  count=0;
                }
              else
                {
                  count++;
                }*/
            });}
          },
      backgroundColor: Colors.deepOrange,
      child: const Icon(Icons.add),),
      body: Center(
        child:ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "second_page");
            },
            child:Text("next page"),


        )

    ));
  }
}
