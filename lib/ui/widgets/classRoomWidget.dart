import 'package:flutter/material.dart';
import 'package:mobile_school_teacher/model/classroom.dart';
import 'package:mobile_school_teacher/ui/pages/academics/studentsPage.dart';
import 'package:mobile_school_teacher/utils/AppStyles.dart';

class ClassRoomWidget extends StatelessWidget {
  final ClassRoom classRoom;

  const ClassRoomWidget({Key key, this.classRoom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return StudentPage(
            classRoom: classRoom,
          );
        }));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              classRoom.name[0],
              style: AppStyle.headerTextStyle,
            ),
          ),
          title: Text(
            classRoom.name,
            style: AppStyle.mediumTextStyle,
          ),
          subtitle: Text(
            "ARM : ${classRoom.classArm}",
            style: AppStyle.smallTexttSTyle,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ),
      ),
    );
  }
}
