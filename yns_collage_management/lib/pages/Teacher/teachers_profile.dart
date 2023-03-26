import 'package:flutter/material.dart';
import 'package:yns_collage_management/Widgets/log_out.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/profile_widget.dart';

class TeachersProfile extends StatelessWidget {
  const TeachersProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var id = 'TG2356513';
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(id),
            Row(
              children: const [
                CallClasses(),
                SizedBox(width: 20),
                LogOut(),
              ],
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Profile(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                AdminRowWidget(text1: 'Teachers Id:', text2: id),
                const Details(),
              ]),
            ),
          ),
        )
      ]),
    );
  }
}
