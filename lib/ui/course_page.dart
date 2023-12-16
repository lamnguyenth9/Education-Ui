import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  String img;
  CoursePage(this.img);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,style: TextStyle(
          letterSpacing: 1,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.notifications, color: Colors.blue,),
            )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 237, 235, 235),
                image: DecorationImage(
                  image: AssetImage("assets/${widget.img}.png"),
                  )
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text("${widget.img} complete Course",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
            ),
            SizedBox(height: 5,),
            Text(
              "Created by UTE",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7)
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 242, 241, 241),
                borderRadius: BorderRadius.circular(10), 
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){},
                      child: Text(
                        "Videos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){},
                      child: Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}