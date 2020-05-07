import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_teacher/ui/pages/academics/academicsPage.dart';
import 'package:mobile_school_teacher/ui/pages/academics/classRoomPage.dart';
import 'package:mobile_school_teacher/ui/widgets/appScafold.dart';
import 'package:mobile_school_teacher/utils/AppStyles.dart';

class HomePage extends StatelessWidget {
  static final routeName = "homepage";
  const HomePage({Key key}) : super(key: key);
  _buildStudyRow(BuildContext context, Size sz, IconData icon, Color color,
      String title, Function function) {
    return Card(
      elevation: 0,
      child: MaterialButton(
        elevation: 5,
        onPressed: function,
        color: Colors.white,
        child: Container(
          width: sz.width * 0.4,
          height: sz.height * 0.2,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                  color: color,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: AppStyle.normalTexttSTyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Home Page",
      childWidget: Container(
        alignment: Alignment.center,
        height: sz.height,
        width: sz.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
              children: <Widget>[
                _buildStudyRow(context, sz, FontAwesomeIcons.running,
                    Colors.red, "My Students", () {
                  Navigator.of(context).pushNamed(ClassRoomPage.routeName);
                }),
                _buildStudyRow(context, sz, FontAwesomeIcons.microphone,
                    Colors.green, "News", (() {})),
                _buildStudyRow(context, sz, FontAwesomeIcons.chalkboardTeacher,
                    Colors.blue, "Academics", (() {
                  Navigator.of(context).pushNamed(AcademicsPage.routeName);
                })),
                _buildStudyRow(context, sz, Icons.speaker_group, Colors.orange,
                    "Profile", (() {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
