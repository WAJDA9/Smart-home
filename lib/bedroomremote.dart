import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class BedRoomScreen extends StatefulWidget {
  const BedRoomScreen({super.key});

  @override
  State<BedRoomScreen> createState() => _BedRoomScreenState();
}

class _BedRoomScreenState extends State<BedRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ClipOval(
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.dialpad),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Material(
                      color: Colors.red,
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.power_settings_new),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.bubble_chart),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 156,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('VOL',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                Joystick(
                  listener: (details){

                  },
                ),
                Container(
                  height: 156,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('CH',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}