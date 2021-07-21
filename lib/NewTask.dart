import 'package:flutter/material.dart';
import 'HomePage.dart';

class NewTask extends StatelessWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir'
      ),
      home: newTask(),
    );
  }
}

class newTask extends StatefulWidget {
  const newTask({Key? key}) : super(key: key);

  @override
  _newTaskState createState() => _newTaskState();
}

class _newTaskState extends State<newTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff96060),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Task",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 30,
              color: Color(0xfff96060),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "For",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: Text(
                              "Asignee",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "In",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: Text(
                              "Project",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.grey.withOpacity(0.2),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Title",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ),
                              child: TextField(
                                maxLines: 6,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Add description here",
                                ),
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: Colors.grey,
                                      ), onPressed: () {  },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey.withOpacity(0.2),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Due Date",
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              "Add member",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Text(
                                "Anyone",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Color(0xffff96060),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Task",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
