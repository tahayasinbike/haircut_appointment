import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:haircut_appointment/widgets/randevu_widget/avatar_widget.dart';

class RandevuView extends StatelessWidget {
  final String imageName;
  final String name;

  const RandevuView({super.key, required this.imageName, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SpeedDial(
        icon: Icons.menu, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor:
            const Color.fromARGB(255, 178, 84, 77), //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.deepPurpleAccent, //background color when menu is expanded
        activeForegroundColor: Colors.white,
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'), // action when menu opens
        onClose: () => print('DIAL CLOSED'), //action when menu closes

        elevation: 8.0, //shadow elevation of button
        shape: const CircleBorder(
            side: BorderSide(width: 2, color: Colors.white)), //shape of button

        children: [
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.notifications_active),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Ücretlerimiz',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => print('FIRST CHILD'),
            onLongPress: () => print('FIRST CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.notification_important_outlined),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            label: 'Asansör Arıza Bildir',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => print('SECOND CHILD'),
            onLongPress: () => print('SECOND CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.send),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Yöneticiye mesaj gönder',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
            onLongPress: () => print('THIRD CHILD LONG PRESS'),
          ),

          //add more menu item children here
        ],
      ),
      body: Column(
        children: [avatar(imageName, name)],
      ),
    );
  }
}
