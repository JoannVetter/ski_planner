import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ski_planner/models/profiles_model.dart';
import 'package:ski_planner/controllers/profiles/profiles_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  ProfilesController get profilesController => Get.find();

  // Saves items used
  List<String?> equippedItems = [null, null, null, null, null];
  List<bool> isAvailable = [false, false, false, false, false];
  List<String> profileItems = ['Helmet', 'Jacket', 'Skis', 'Boots', 'Gloves'];
  double avatarRadius = 100;
  double containerSize = 60;
  double screenWidth = 0;
  double screenHeight = 0;
  // Positions of items
  List<Offset> equipmentPositions = [
    Offset(0, 0), // Helmet position
    Offset(0, 0), // Jacket position
    Offset(0, 0), // Skis position
    Offset(0, 0), // Boots position
    Offset(0, 0), // Gloves position
  ];



  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
    equipmentPositions[0] = Offset(screenWidth/2-containerSize/2, screenHeight/3.5); // Helmet position
    equipmentPositions[1] = Offset(screenWidth/2-containerSize/2, screenHeight/2.5); // Jacket position
    equipmentPositions[2] = Offset(0.5*screenWidth/2-containerSize/2, screenHeight/2); // Skis position
    equipmentPositions[3] = Offset(screenWidth/2-containerSize/2, screenHeight/1.5); // Boots position
    equipmentPositions[4] = Offset(1.5*screenWidth/2-containerSize/2, screenHeight/2); // Gloves position
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:
      Stack(
        children: [
          // Draw avatar
          Positioned(
            left: screenWidth / 2 - avatarRadius,
            top: screenHeight / 2 - avatarRadius,
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.blue[200],
              child: Text(
                'Avatar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Draw items slots
          for (int i = 0; i < equipmentPositions.length; i++)
            Positioned(
              left: equipmentPositions[i].dx,
              top: equipmentPositions[i].dy,
              child: GestureDetector(
                onTap: () {
                  _showItemSelectionDialog(i);
                },
                child: Container(
                  width: containerSize,
                  height: containerSize,
                  decoration: BoxDecoration(
                    color: isAvailable[i] ? Colors.green : (equippedItems[i] ==
                        null ? Colors.black : Colors.transparent),
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: equippedItems[i] != null
                      ? Center(
                    child: Text(
                      equippedItems[i]!,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                      : Center(
                      child: Text(profileItems[i],
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: NavBar(
        index: 0,
      ),
      backgroundColor: Colors.brown,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }
  // Display dialog screen to select if item is available or not
  void _showItemSelectionDialog(int positionIndex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select one'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('None'),
                onTap: () {
                  setState(() {
                    equippedItems[positionIndex] = null;
                    isAvailable[positionIndex] = false;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Available'),
                onTap: () {
                  setState(() {
                    isAvailable[positionIndex] = true;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
