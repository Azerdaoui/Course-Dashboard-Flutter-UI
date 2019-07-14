import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  List chapters = [
    'Introduction', 
    'Adobe XD',
    'Skecth Basics',
    'Figme Ma stery'
  ];

  List topics = [
    'Introduction to the course',
    'Detailed tutorials on adobe XD',
    'Detailed tutorials on Vuejs & Laravel',
    'Sketch beginner to experts series',
    'Figma from zero to hero !'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Course details !',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          // color: Theme.of(context).accentColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              Text(
                'Design Tool Bundle'.toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
                  backgroundColor: Colors.green.shade300,
                ),
                title: Text(
                  'Azerdaoui Othmane',
                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Lead Instructor',
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ListView.builder(
                itemCount: chapters.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  return Container( 
                    margin: EdgeInsets.only(bottom: 10), 
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0,0),
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Text(
                          '$index',
                          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(
                        chapters[index].toString().toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color:Colors.black),
                      ),
                      subtitle: Text(
                        topics[index].toString(),
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.chevron_right, size: 18, color: Theme.of(context).primaryColor,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
} 