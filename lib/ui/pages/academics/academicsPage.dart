import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_school_teacher/ui/widgets/appScafold.dart';
import 'package:mobile_school_teacher/utils/AppStyles.dart';

class AcademicsPage extends StatelessWidget {
  static final routeName = "academics";

  _buildAcademicRow(BuildContext context, Size sz, IconData icon, Color color,
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
                  height: sz.height * 0.01,
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
    final size = MediaQuery.of(context).size;
    return AppScaffold(
      title: "Academics",
      childWidget: Container(
        height: size.height,
        width: size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
              children: <Widget>[
                _buildAcademicRow(context, size, FontAwesomeIcons.book,
                    Colors.red, "My Notes", () {}),
                _buildAcademicRow(context, size, FontAwesomeIcons.calculator,
                    Colors.green, "Assessments", (() {})),
                _buildAcademicRow(context, size, FontAwesomeIcons.desktop,
                    Colors.blue, "E Text Books", (() {})),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
