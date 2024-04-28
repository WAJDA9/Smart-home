import 'package:flutter/material.dart';
import 'package:smarthome/bedroomremote.dart';
import 'package:smarthome/kitchenremote.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Home'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon( Icons.bed, size: 50),
                Text("Chambre", style: TextStyle(fontSize: 20),),
                 IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BedRoomScreen()));
                }, 
                icon: Icon(Icons.settings_remote_outlined,
                color: ThemeData().primaryColor,
                ),)
              ],
            ),
          ),
          Container(

            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon( Icons.table_bar, size: 50),
                Text("Cuisine", style: TextStyle(fontSize: 20),),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KitchenScreen()));
                }, 
                icon: Icon(Icons.settings_remote_outlined,
                color: ThemeData().primaryColor,
                ),)
              ],
            ),
          )
        ],
      )
    );
  }
}